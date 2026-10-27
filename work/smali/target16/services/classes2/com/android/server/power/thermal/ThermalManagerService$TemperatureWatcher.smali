.class Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public final mCachedHeadrooms:Landroid/util/SparseArray;

.field public final mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadroomThresholds:[F

.field mInactivityThresholdMillis:J

.field public mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field mSevereThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/power/thermal/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$EwPixTvvLFRc35c-UN5wtagZcpk(Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    return-void
.end method

.method public static synthetic $r8$lambda$JXIxUJoOZoNaUptSE5ak8RG1jF4(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2

    .line 2116
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/thermal/ThermalManagerService;)V
    .registers 4

    .line 1985
    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 1988
    iput-wide v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    .line 1992
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1998
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 2001
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    .line 2005
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    const/4 p1, 0x7

    .line 2009
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const-wide/16 v0, 0x0

    .line 2011
    iput-wide v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 2014
    new-instance p1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;)V

    iput-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static normalizeTemperature(FF)F
    .registers 4

    .line 0
    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p1, v0

    cmpg-float v1, p0, p1

    if-gtz v1, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    sub-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public createSampleForTesting(JF)Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;
    .registers 4

    .line 2366
    new-instance p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    return-object p0
.end method

.method public final getAndUpdateTemperatureSamples()V
    .registers 7

    .line 2076
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2077
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4b

    .line 2081
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2091
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    .line 2097
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    .line 2098
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_2e

    :catchall_40
    move-exception p0

    goto :goto_57

    :cond_42
    if-eqz v4, :cond_49

    .line 2101
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2103
    :cond_49
    monitor-exit v0

    return-void

    .line 2085
    :cond_4b
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2086
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 2087
    monitor-exit v0

    return-void

    .line 2103
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_40

    throw p0
.end method

.method public getAndUpdateThresholds()V
    .registers 5

    .line 2018
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 2019
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v0

    .line 2020
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2022
    :try_start_f
    iget-object v2, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 2024
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/thermal/TemperatureThreshold;

    const/4 v3, 0x0

    .line 2025
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    goto :goto_1a

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 2027
    :cond_2d
    monitor-exit v1

    return-void

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public getForecast(I)F
    .registers 14

    .line 2173
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2176
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_32

    .line 2177
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No temperature thresholds found"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2184
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    const/16 v4, 0x305

    const/4 v6, 0x6

    const/high16 v7, 0x7fc00000    # Float.NaN

    const/4 v9, 0x0

    move v8, p1

    .line 2178
    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    .line 2185
    monitor-exit v1

    return v2

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1e7

    :cond_32
    move v6, p1

    .line 2187
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_2e

    .line 2188
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p1, p1, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_88

    .line 2190
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 2192
    :try_start_44
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ne v4, v1, :cond_5c

    .line 2193
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_5e

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto :goto_86

    :cond_5c
    const/high16 v4, -0x40800000    # -1.0f

    .line 2195
    :goto_5e
    monitor-exit p1
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_59

    cmpl-float p1, v4, v0

    if-lez p1, :cond_88

    .line 2198
    :try_start_63
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/thermal/ThermalManagerService;)Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;

    move-result-object p0

    .line 2199
    invoke-virtual {p0, v6}, Lcom/android/server/power/thermal/ThermalManagerService$ThermalHalWrapper;->forecastSkinTemperature(I)F

    move-result p0

    .line 2209
    invoke-static {p0, v4}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result p0
    :try_end_71
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_63 .. :try_end_71} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_72

    return p0

    .line 2213
    :catch_72
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "forecastSkinTemperature fails"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 2211
    :catch_7c
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "forecastSkinTemperature returns unsupported"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return v2

    .line 2195
    :goto_86
    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_59

    throw p0

    .line 2219
    :cond_88
    iget-object p1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 2220
    :try_start_8b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 2221
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    goto :goto_a3

    :catchall_9f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1e5

    .line 2233
    :cond_a3
    :goto_a3
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 2234
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No temperature samples found"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x305

    const/4 v5, 0x5

    move v7, v6

    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 2235
    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    .line 2242
    monitor-exit p1

    return v2

    .line 2245
    :cond_c5
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 2246
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v2, 0x305

    const/4 v4, 0x1

    .line 2249
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    .line 2261
    monitor-exit p1

    return v5

    .line 2266
    :cond_e7
    iget-object v4, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v9, v2

    move v2, v3

    :cond_f3
    :goto_f3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2267
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2268
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2270
    iget-object v8, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-nez v8, :cond_130

    add-int/lit8 v2, v2, 0x1

    .line 2273
    invoke-static {}, Lcom/android/server/power/thermal/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No threshold found for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f3

    .line 2277
    :cond_130
    invoke-virtual {v5}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;

    iget v7, v7, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 2279
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ge v10, v11, :cond_186

    .line 2280
    iget-object v5, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v1, :cond_171

    iget-object v5, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 2284
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2292
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    const/16 v1, 0x305

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2285
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    .line 2297
    monitor-exit p1

    return v4

    .line 2300
    :cond_171
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v7, v5}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v5

    .line 2301
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_183

    cmpl-float v7, v5, v9

    if-lez v7, :cond_f3

    :cond_183
    :goto_183
    move v9, v5

    goto/16 :goto_f3

    :cond_186
    if-lez v6, :cond_18d

    .line 2308
    invoke-virtual {p0, v5}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v5

    goto :goto_18e

    :cond_18d
    move v5, v0

    :goto_18e
    int-to-float v10, v6

    mul-float/2addr v5, v10

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v10

    add-float/2addr v7, v5

    .line 2311
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2310
    invoke-static {v7, v5}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v5

    .line 2312
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_183

    cmpl-float v7, v5, v9

    if-lez v7, :cond_f3

    goto :goto_183

    .line 2321
    :cond_1a7
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v2, v0, :cond_1c6

    .line 2323
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2328
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    const/16 v2, 0x305

    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v7, 0x0

    .line 2322
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    move v5, v9

    goto :goto_1da

    .line 2331
    :cond_1c6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/thermal/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/thermal/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2336
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    const/16 v2, 0x305

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v5, v9

    .line 2330
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIZZ)V

    .line 2338
    :goto_1da
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2339
    monitor-exit p1

    return v5

    .line 2340
    :goto_1e5
    monitor-exit p1
    :try_end_1e6
    .catchall {:try_start_8b .. :try_end_1e6} :catchall_9f

    throw p0

    .line 2187
    :goto_1e7
    :try_start_1e7
    monitor-exit v1
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_2e

    throw p0
.end method

.method public getHeadroomCallbackDataLocked()Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;
    .registers 6

    .line 2351
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;

    const/4 v1, 0x0

    .line 2352
    invoke-virtual {p0, v1}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v1

    const/16 v2, 0xa

    .line 2353
    invoke-virtual {p0, v2}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v3

    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v4, p0

    .line 2355
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/android/server/power/thermal/ThermalManagerService$HeadroomCallbackData;-><init>(FFI[F)V

    return-object v0
.end method

.method public getHeadroomThresholds()[F
    .registers 3

    .line 2344
    iget-object v0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2345
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_c
    move-exception p0

    .line 2346
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getSlopeOf(Ljava/util/List;)F
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    const/4 v2, 0x0

    move v6, p0

    move-wide v4, v0

    move v3, v2

    .line 2132
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1c

    .line 2133
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2134
    iget-wide v8, v7, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v4, v8

    .line 2135
    iget v7, v7, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2137
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v7, v3

    div-long/2addr v4, v7

    .line 2138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 2142
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 2143
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2144
    iget-wide v7, v3, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v7, v4

    .line 2145
    iget v3, v3, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v3, v6

    mul-long v9, v7, v7

    add-long/2addr v0, v9

    long-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_43
    long-to-float p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public final updateTemperatureSampleLocked(JLandroid/os/Temperature;)Z
    .registers 6

    .line 2112
    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2115
    :cond_c
    iget-object p0, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 2117
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_28

    .line 2118
    invoke-virtual {p0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 2120
    :cond_28
    new-instance v0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V
    .registers 8

    .line 2034
    iget-object v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_7

    goto :goto_64

    .line 2037
    :cond_7
    aget v0, v0, v2

    .line 2039
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_64

    .line 2042
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_29

    .line 2050
    iget-object p2, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 2051
    iget-object p2, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_29
    const/4 p2, 0x1

    :goto_2a
    const/4 v1, 0x6

    if-gt p2, v1, :cond_64

    .line 2055
    iget-object v1, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v3, v1

    if-le v3, p2, :cond_61

    .line 2056
    aget v1, v1, p2

    .line 2057
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_61

    :cond_3b
    if-ne p2, v2, :cond_44

    .line 2061
    iget-object v1, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, p2

    goto :goto_61

    .line 2064
    :cond_44
    invoke-static {v1, v0}, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v1

    .line 2065
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 2066
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aput v1, v3, p2

    goto :goto_61

    .line 2068
    :cond_57
    iget-object v3, p0, Lcom/android/server/power/thermal/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v4, v3, p2

    .line 2069
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v3, p2

    :cond_61
    :goto_61
    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_64
    :goto_64
    return-void
.end method
