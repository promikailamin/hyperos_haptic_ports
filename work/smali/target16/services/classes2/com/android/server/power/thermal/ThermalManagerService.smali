.class public Lcom/android/server/power/thermal/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "ThermalManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThermalManagerService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentHeadRoomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

.field final mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsStatusOverride:Z

.field public mLastHeadroomCallbackData:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

.field public mLastHeadroomCallbackTimeMillis:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxHeadroomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mService:Landroid/os/IThermalService$Stub;

.field public mStatus:I

.field public mTemperatureMap:Landroid/util/ArrayMap;

.field final mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

.field public final mThermalEventListeners:Landroid/os/RemoteCallbackList;

.field public final mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

.field public final mThermalStatusListeners:Landroid/os/RemoteCallbackList;

.field public final mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$2lj2LEpgwmXAQ8XfXkYY2LAklGs(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->lambda$postStatusListenerLocked$0(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLO6kvIxL_Bjna9XqvMUi5GqX0Y(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 3

    .line 431
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 433
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal event callback failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$WEfbITOLEWmTgpYLSgOpOfLE5rs(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;Landroid/os/IThermalHeadroomListener;II)V
    .registers 5

    .line 339
    :try_start_0
    iget p2, p0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 342
    :cond_9
    iget p2, p0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->mHeadroom:F

    iget p3, p0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->mForecastHeadroom:F

    iget v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->mForecastSeconds:I

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->mHeadroomThresholds:[F

    invoke-interface {p1, p2, p3, v0, p0}, Landroid/os/IThermalHeadroomListener;->onHeadroomChange(FFI[F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 351
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Thermal headroom callback failed to call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static synthetic $r8$lambda$nuXN7icTAdEG8PdEzZpnjfkj3QU(Lcom/android/server/power/thermal/ThermalManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalReady(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/thermal/ThermalManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/power/thermal/ThermalManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalHeadroomListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/thermal/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsStatusOverride(Lcom/android/server/power/thermal/ThermalManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsStatusOverride:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAndNotifyHeadroomListenersLocked(Lcom/android/server/power/thermal/ThermalManagerService;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTemperatureChanged(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/Temperature;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->onTemperatureMapChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostEventListenerCurrentTemperaturesLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->postEventListenerCurrentTemperaturesLocked(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostHeadroomListenerLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/thermal/ThermalManagerService;->postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostStatusListenerLocked(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->postStatusListenerLocked(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStatusLocked(Lcom/android/server/power/thermal/ThermalManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->setStatusLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smthermalSeverityToStatsdStatus(I)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->thermalSeverityToStatsdStatus(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/thermal/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;)V
    .registers 6

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mCurrentHeadRoomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mMaxHeadroomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 137
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 142
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 175
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/thermal/ThermalManagerService$1;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    .line 554
    new-instance v2, Lcom/android/server/power/thermal/ThermalManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/thermal/ThermalManagerService$2;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;)V

    iput-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 226
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mContext:Landroid/content/Context;

    .line 227
    iput-object p2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    if-eqz p2, :cond_5d

    .line 229
    invoke-virtual {p2, v0}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    .line 231
    :cond_5d
    iput v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    .line 232
    new-instance p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-direct {p1, p0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    .line 233
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mCurrentHeadRoomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 234
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mMaxHeadroomListenerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5

    .line 875
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_25
    return-void
.end method

.method public static dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V
    .registers 6

    .line 882
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/thermal/TemperatureThreshold;

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TemperatureThreshold{mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mHotThrottlingThresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    .line 885
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mColdThrottlingThresholds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 887
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_56
    return-void
.end method

.method private onPullAtom(ILjava/util/List;)I
    .registers 5

    const/16 v0, 0x27d9

    if-ne p1, v0, :cond_1e

    .line 535
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 536
    :try_start_9
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .line 538
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1b

    .line 540
    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[F)Landroid/util/StatsEvent;

    move-result-object p0

    .line 539
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1b
    move-exception p0

    .line 538
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method private registerStatsCallbacks()V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    if-eqz v0, :cond_19

    .line 517
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;)V

    const/16 p0, 0x27d9

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_19
    return-void
.end method

.method public static thermalSeverityToStatsdStatus(I)I
    .registers 1

    .line 0
    packed-switch p0, :pswitch_data_12

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x3

    return p0

    :pswitch_d
    const/4 p0, 0x2

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;I)V
    .registers 9

    .line 361
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1e

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    invoke-static {p1, v0}, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;->-$$Nest$misSignificantDifferentFrom(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLastHeadroomCallbackTimeMillis:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    :goto_1e
    return-void

    .line 370
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLastHeadroomCallbackTimeMillis:J

    .line 371
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLastHeadroomCallbackData:Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    .line 372
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v0, :cond_46

    .line 375
    :try_start_31
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    .line 376
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IThermalHeadroomListener;

    .line 377
    invoke-virtual {p0, v3, p1, p2, v1}, Lcom/android/server/power/thermal/ThermalManagerService;->postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;II)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3f

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :catchall_3f
    move-exception p1

    .line 382
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 383
    throw p1

    .line 382
    :cond_46
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 895
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 898
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    :try_start_11
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_c9

    .line 901
    :try_start_14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsStatusOverride: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsStatusOverride:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    const-string p3, "ThermalEventListeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 904
    const-string p3, "ThermalStatusListeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 906
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal Status: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string p3, "Cached temperatures:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    const-string p3, "\t"

    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lcom/android/server/power/thermal/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 909
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_e8

    .line 910
    :try_start_69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HAL Ready: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_cb

    .line 912
    const-string p1, "HAL connection:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    const-string p3, "\t"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 914
    const-string p1, "Current temperatures from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    const-string p1, "\t"

    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x0

    .line 916
    invoke-virtual {p3, v2, v2}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p3

    .line 915
    invoke-static {p2, p1, p3}, Lcom/android/server/power/thermal/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 917
    const-string p1, "Current cooling devices from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    const-string p1, "\t"

    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 919
    invoke-virtual {p3, v2, v2}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p3

    .line 918
    invoke-static {p2, p1, p3}, Lcom/android/server/power/thermal/ThermalManagerService;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 920
    const-string p1, "Temperature static thresholds from HAL:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    const-string p1, "\t"

    iget-object p3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 922
    invoke-virtual {p3, v2, v2}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object p3

    .line 921
    invoke-static {p2, p1, p3}, Lcom/android/server/power/thermal/ThermalManagerService;->dumpTemperatureThresholds(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_cb

    :catchall_c9
    move-exception p0

    goto :goto_eb

    .line 925
    :cond_cb
    :goto_cb
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p1, p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1
    :try_end_d0
    .catchall {:try_start_69 .. :try_end_d0} :catchall_c9

    .line 926
    :try_start_d0
    const-string p3, "Temperature headroom thresholds:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    monitor-exit p1
    :try_end_e1
    .catchall {:try_start_d0 .. :try_end_e1} :catchall_e5

    .line 931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_e5
    move-exception p0

    .line 928
    :try_start_e6
    monitor-exit p1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    :try_start_e7
    throw p0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_c9

    :catchall_e8
    move-exception p0

    .line 909
    :try_start_e9
    monitor-exit p1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw p0
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_c9

    .line 931
    :goto_eb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    throw p0
.end method

.method public final synthetic lambda$postStatusListenerLocked$0(Landroid/os/IThermalStatusListener;)V
    .registers 3

    .line 307
    :try_start_0
    iget p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    invoke-interface {p1, p0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 309
    sget-object p1, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Thermal status callback failed to call"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 6

    .line 443
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_26

    .line 446
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 447
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalEventListener;

    .line 448
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 449
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 450
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/power/thermal/ThermalManagerService;->postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_1f
    move-exception p1

    .line 453
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 454
    throw p1

    .line 453
    :cond_26
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 455
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0xab1

    .line 455
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final notifyStatusListenersLocked()V
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 322
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 323
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalStatusListener;

    .line 324
    invoke-virtual {p0, v2}, Lcom/android/server/power/thermal/ThermalManagerService;->postStatusListenerLocked(Landroid/os/IThermalStatusListener;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :catchall_17
    move-exception v0

    .line 327
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 328
    throw v0

    .line 327
    :cond_1e
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final onActivityManagerReady()V
    .registers 8

    .line 253
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    if-nez v1, :cond_1f

    .line 257
    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-direct {v1, v4}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalAidlWrapper;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 258
    invoke-virtual {v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    goto/16 :goto_a9

    :cond_1f
    :goto_1f
    if-nez v1, :cond_2e

    .line 261
    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;

    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-direct {v1, v4}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal20Wrapper;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 262
    invoke-virtual {v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    :cond_2e
    if-nez v1, :cond_3d

    .line 265
    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;

    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-direct {v1, v4}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal11Wrapper;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 266
    invoke-virtual {v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    :cond_3d
    if-nez v1, :cond_4c

    .line 269
    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;

    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mWrapperCallback:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-direct {v1, v4}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHal10Wrapper;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V

    iput-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    .line 270
    invoke-virtual {v1}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v1

    :cond_4c
    if-nez v1, :cond_57

    .line 273
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v1, "No Thermal HAL service on this device"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    monitor-exit v0

    return-void

    .line 276
    :cond_57
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v1

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6a

    .line 280
    sget-object v5, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Thermal HAL reported invalid data, abort connection"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move v5, v3

    :goto_6b
    if-ge v5, v4, :cond_79

    .line 283
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Temperature;

    invoke-virtual {p0, v6, v3}, Lcom/android/server/power/thermal/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6b

    .line 285
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 286
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v1}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getAndUpdateThresholds()V

    .line 288
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object v1, v1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_1c

    .line 289
    :try_start_86
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object v4, v4, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_96

    if-ne v4, v2, :cond_9f

    .line 291
    :try_start_90
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_95
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_90 .. :try_end_95} :catch_98
    .catchall {:try_start_90 .. :try_end_95} :catchall_96

    goto :goto_9f

    :catchall_96
    move-exception p0

    goto :goto_a7

    .line 295
    :catch_98
    :try_start_98
    sget-object v3, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL does not support forecastSkinTemperature"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_9f
    :goto_9f
    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_96

    .line 299
    :try_start_a0
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 300
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_1c

    return-void

    .line 298
    :goto_a7
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_96

    :try_start_a8
    throw p0

    .line 300
    :goto_a9
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_1c

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->onActivityManagerReady()V

    :cond_7
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 248
    invoke-direct {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->registerStatsCallbacks()V

    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 239
    const-string/jumbo v0, "thermalservice"

    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 6

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->shutdownIfNeeded(Landroid/os/Temperature;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    if-eqz v1, :cond_21

    .line 484
    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_24

    goto :goto_21

    :catchall_1f
    move-exception p0

    goto :goto_61

    .line 485
    :cond_21
    :goto_21
    invoke-virtual {p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    :cond_24
    if-eqz p2, :cond_29

    .line 488
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 490
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_1f

    if-eqz p2, :cond_60

    .line 495
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_60

    .line 496
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 497
    :try_start_36
    iget-object p2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mThermalHeadroomListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p2

    if-nez p2, :cond_42

    .line 498
    monitor-exit p1

    return-void

    :catchall_40
    move-exception p0

    goto :goto_5e

    .line 500
    :cond_42
    monitor-exit p1
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_40

    .line 502
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    iget-object p2, p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 503
    :try_start_48
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {p1}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getHeadroomCallbackDataLocked()Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    move-result-object p1

    .line 504
    monitor-exit p2
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_5b

    .line 505
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 p2, 0x1

    .line 506
    :try_start_53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->checkAndNotifyHeadroomListenersLocked(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;I)V

    .line 510
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_58

    throw p0

    :catchall_5b
    move-exception p0

    .line 504
    :try_start_5c
    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p0

    .line 500
    :goto_5e
    :try_start_5e
    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_40

    throw p0

    :cond_60
    return-void

    .line 490
    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_1f

    throw p0
.end method

.method public final onTemperatureMapChangedLocked()V
    .registers 7

    .line 389
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v1, v0, :cond_26

    .line 391
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 392
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v2, :cond_23

    .line 393
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 397
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v0, :cond_2d

    .line 398
    invoke-virtual {p0, v2}, Lcom/android/server/power/thermal/ThermalManagerService;->setStatusLocked(I)V

    :cond_2d
    return-void
.end method

.method public final postEventListenerCurrentTemperaturesLocked(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 6

    .line 414
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 416
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Temperature;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/power/thermal/ThermalManagerService;->postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final postEventListenerLocked(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 4

    if-eqz p3, :cond_d

    .line 426
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p3

    if-eq p0, p3, :cond_d

    goto :goto_23

    .line 429
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p3, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2, p1}, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_23

    .line 437
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Thermal event callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_23
    return-void
.end method

.method public final postHeadroomListenerLocked(Landroid/os/IThermalHeadroomListener;Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;II)V
    .registers 6

    .line 334
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1f

    .line 337
    :cond_9
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;Landroid/os/IThermalHeadroomListener;II)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 355
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Thermal headroom callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final postStatusListenerLocked(Landroid/os/IThermalStatusListener;)V
    .registers 4

    .line 305
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/thermal/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/thermal/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_16

    .line 313
    sget-object p0, Lcom/android/server/power/thermal/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Thermal status callback failed to queue"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public final setStatusLocked(I)V
    .registers 5

    .line 404
    iget v0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_11

    const-wide/32 v0, 0x20000

    .line 405
    const-string v2, "ThermalManagerService.status"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 406
    iput p1, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mStatus:I

    .line 407
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->notifyStatusListenersLocked()V

    :cond_11
    return-void
.end method

.method public final shutdownIfNeeded(Landroid/os/Temperature;)V
    .registers 4

    .line 460
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    goto :goto_28

    .line 463
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 464
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    if-eq p1, v1, :cond_30

    const/4 v1, 0x2

    if-eq p1, v1, :cond_29

    const/4 v1, 0x3

    if-eq p1, v1, :cond_30

    const/16 v1, 0x9

    if-eq p1, v1, :cond_30

    :goto_28
    return-void

    .line 475
    :cond_29
    const-string/jumbo p1, "thermal,battery"

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    return-void

    .line 472
    :cond_30
    const-string/jumbo p1, "thermal"

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    return-void
.end method
