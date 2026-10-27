.class Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeInFreqMultiStateCounter"
.end annotation


# instance fields
.field private final blacklist mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field private final blacklist mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V
    .registers 7
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "cpuFreqCount"    # I
    .param p4, "timestampMs"    # J

    .line 2265
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    .line 2266
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .registers 6
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J

    .line 2269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2270
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2271
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2272
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2273
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2274
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "cpuFreqCount"    # I
    .param p4, "timestampMs"    # J

    .line 2284
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2285
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2286
    .local v0, "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v1

    if-ne v1, p2, :cond_1b

    .line 2287
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    if-eq v1, p3, :cond_15

    goto :goto_1b

    .line 2290
    :cond_15
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-direct {v1, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-object v1

    .line 2288
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist setState(IJ)V
    .registers 5
    .param p1, "uidRunningState"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 2316
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 2317
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2277
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2278
    return-void
.end method


# virtual methods
.method public blacklist detach()V
    .registers 2

    .line 2356
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2357
    return-void
.end method

.method public blacklist getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;
    .registers 2

    .line 2304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-object v0
.end method

.method public blacklist getCountsLocked([JI)Z
    .registers 10
    .param p1, "counts"    # [J
    .param p2, "procState"    # I

    .line 2323
    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    .line 2324
    return v2

    .line 2327
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 2330
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_21

    .line 2331
    aget-wide v3, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    .line 2332
    return v1

    .line 2330
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 2335
    .end local v0    # "i":I
    :cond_21
    return v2
.end method

.method public blacklist getStateCount()I
    .registers 2

    .line 2308
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v0

    return v0
.end method

.method public blacklist logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2340
    return-void
.end method

.method public blacklist onTimeStarted(JJJ)V
    .registers 11
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2295
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2296
    return-void
.end method

.method public blacklist onTimeStopped(JJJ)V
    .registers 11
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2300
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2301
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .registers 5
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2347
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    .line 2348
    if-eqz p1, :cond_a

    .line 2349
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->detach()V

    .line 2351
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setTrackingEnabled(ZJ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 2312
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2313
    return-void
.end method
