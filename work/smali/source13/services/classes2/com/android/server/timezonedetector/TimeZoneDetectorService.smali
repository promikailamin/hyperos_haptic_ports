.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.super Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.source "TimeZoneDetectorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "time_zone_detector"


# instance fields
.field private final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field private final mContext:Landroid/content/Context;

.field private final mDumpables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/time/ITimeZoneDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method static bridge synthetic -$$Nest$smcreate(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callerIdentityInjector"    # Lcom/android/server/timezonedetector/CallerIdentityInjector;
    .param p4, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p5, "timeZoneDetectorStrategy"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 158
    invoke-direct {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;-><init>()V

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    .line 161
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 162
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 163
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 167
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 169
    return-void
.end method

.method private static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)Lcom/android/server/timezonedetector/TimeZoneDetectorService;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p3, "timeZoneDetectorStrategy"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 149
    sget-object v6, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 150
    .local v6, "callerIdentityInjector":Lcom/android/server/timezonedetector/CallerIdentityInjector;
    new-instance v7, Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V

    return-object v7
.end method

.method private enforceManageTimeZoneDetectorPermission()V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    const-string/jumbo v2, "manage time and time zone detection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private enforceSuggestGeolocationTimeZonePermission()V
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "suggest geolocation time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private enforceSuggestManualTimeZonePermission()V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    const-string/jumbo v2, "suggest manual time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method private enforceSuggestTelephonyTimeZonePermission()V
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    const-string/jumbo v2, "suggest telephony time and time zone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method addDumpable(Lcom/android/server/timezonedetector/Dumpable;)V
    .registers 4
    .param p1, "dumpable"    # Lcom/android/server/timezonedetector/Dumpable;

    .line 362
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/app/time/ITimeZoneDetectorListener;

    .line 216
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 220
    :try_start_9
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 221
    .local v1, "listenerBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 222
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_3d

    return-void

    .line 226
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 229
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_3d

    .line 232
    goto :goto_3b

    .line 230
    :catch_21
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string/jumbo v3, "time_zone_detector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to linkToDeath() for listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    .end local v1    # "listenerBinder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3b
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public binderDied()V
    .registers 3

    .line 260
    const-string/jumbo v0, "time_zone_detector"

    const-string v1, "binderDied() called unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "who"    # Landroid/os/IBinder;

    .line 269
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "removedListener":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 272
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "listenerIndex":I
    :goto_c
    if-ltz v3, :cond_26

    .line 273
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 274
    .local v4, "listenerBinder":Landroid/os/IBinder;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 275
    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 276
    const/4 v1, 0x1

    .line 277
    goto :goto_26

    .line 272
    .end local v4    # "listenerBinder":Landroid/os/IBinder;
    :cond_23
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 280
    .end local v3    # "listenerIndex":I
    :cond_26
    :goto_26
    if-nez v1, :cond_4d

    .line 281
    const-string/jumbo v3, "time_zone_detector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notified of binder death for who="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but did not remove any listeners. mListeners="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v1    # "removedListener":Z
    .end local v2    # "listenerCount":I
    :cond_4d
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "time_zone_detector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 379
    :cond_c
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 380
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v1, v0, p3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    monitor-enter v1

    .line 383
    :try_start_19
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/timezonedetector/Dumpable;

    .line 384
    .local v3, "dumpable":Lcom/android/server/timezonedetector/Dumpable;
    invoke-interface {v3, v0, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 385
    .end local v3    # "dumpable":Lcom/android/server/timezonedetector/Dumpable;
    goto :goto_1f

    .line 386
    :cond_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_34

    .line 388
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 389
    return-void

    .line 386
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method enableTelephonyFallback()V
    .registers 2

    .line 353
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 354
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->enableTelephonyTimeZoneFallback()V

    .line 355
    return-void
.end method

.method generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 2

    .line 369
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 371
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 175
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    return-object v1
.end method

.method getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 7
    .param p1, "userId"    # I

    .line 179
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 181
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 183
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 184
    invoke-interface {v2, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    .line 185
    .local v2, "configurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    .line 187
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v4, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 185
    return-object v3

    .line 187
    .end local v2    # "configurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :catchall_19
    move-exception v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 188
    throw v2
.end method

.method handleConfigurationInternalChangedOnHandlerThread()V
    .registers 9

    .line 292
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 294
    .local v1, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "listenerIndex":I
    :goto_a
    if-ge v2, v1, :cond_35

    .line 295
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 297
    .local v3, "listener":Landroid/app/time/ITimeZoneDetectorListener;
    :try_start_14
    invoke-interface {v3}, Landroid/app/time/ITimeZoneDetectorListener;->onChange()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_37

    .line 300
    goto :goto_32

    .line 298
    :catch_18
    move-exception v4

    .line 299
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_19
    const-string/jumbo v5, "time_zone_detector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to notify listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v3    # "listener":Landroid/app/time/ITimeZoneDetectorListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 302
    .end local v1    # "listenerCount":I
    .end local v2    # "listenerIndex":I
    :cond_35
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_37

    throw v1
.end method

.method isGeoTimeZoneDetectionSupported()Z
    .registers 2

    .line 343
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 345
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->isGeoTimeZoneDetectionSupported()Z

    move-result v0

    return v0
.end method

.method isTelephonyTimeZoneDetectionSupported()Z
    .registers 2

    .line 337
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 339
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->isTelephonyTimeZoneDetectionSupported()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-android-server-timezonedetector-TimeZoneDetectorService()V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$suggestGeolocationTimeZone$1$com-android-server-timezonedetector-TimeZoneDetectorService(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 3
    .param p1, "timeZoneSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 311
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    return-void
.end method

.method synthetic lambda$suggestTelephonyTimeZone$2$com-android-server-timezonedetector-TimeZoneDetectorService(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 3
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 333
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 394
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 396
    return-void
.end method

.method public removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/app/time/ITimeZoneDetectorListener;

    .line 238
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 242
    :try_start_9
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 243
    .local v1, "listenerBinder":Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 244
    .local v2, "removedListener":Z
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 246
    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 247
    const/4 v2, 0x1

    .line 249
    :cond_1b
    if-nez v2, :cond_42

    .line 250
    const-string/jumbo v3, "time_zone_detector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client asked to remove listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but no listeners were removed. mListeners="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v1    # "listenerBinder":Landroid/os/IBinder;
    .end local v2    # "removedListener":Z
    :cond_42
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 4
    .param p1, "timeZoneSuggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 307
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestGeolocationTimeZonePermission()V

    .line 308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .registers 7
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 316
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestManualTimeZonePermission()V

    .line 317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 320
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v1

    .line 322
    .local v1, "token":J
    :try_start_12
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    invoke-interface {v3, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;->suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 324
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v4, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 322
    return v3

    .line 324
    :catchall_1e
    move-exception v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v4, v1, v2}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 325
    throw v3
.end method

.method public suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 4
    .param p1, "timeZoneSuggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 330
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceSuggestTelephonyTimeZonePermission()V

    .line 331
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method

.method updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "updateConfiguration"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 202
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->clearCallingIdentity()J

    move-result-wide v0

    .line 208
    .local v0, "token":J
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v2, p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_2b

    .line 210
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 208
    return v2

    .line 210
    :catchall_2b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v3, v0, v1}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->restoreCallingIdentity(J)V

    .line 211
    throw v2
.end method

.method public updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .registers 4
    .param p1, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 193
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/CallerIdentityInjector;->getCallingUserId()I

    move-result v0

    .line 194
    .local v0, "callingUserId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v1

    return v1
.end method
