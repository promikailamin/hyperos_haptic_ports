.class Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioAccessTechnologyBatteryStats"
.end annotation


# instance fields
.field private blacklist mActive:Z

.field private blacklist mFrequencyRange:I

.field private blacklist mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mSignalStrength:I

.field public final blacklist perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetRxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(ILcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 15
    .param p1, "freqCount"    # I
    .param p2, "clock"    # Lcom/android/internal/os/Clock;
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 997
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1002
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1010
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1015
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1019
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1021
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, p1, :cond_3f

    .line 1022
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_26
    if-ge v1, v3, :cond_3c

    .line 1023
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v2, v1

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 1021
    .end local v1    # "j":I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1026
    .end local v0    # "i":I
    :cond_3f
    return-void
.end method

.method private blacklist getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 9
    .param p1, "frequencyRange"    # I
    .param p2, "make"    # Z

    .line 1253
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 1254
    if-nez p2, :cond_8

    return-object v1

    .line 1256
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1257
    .local v0, "freqCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1258
    .local v2, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    new-array v3, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1259
    const/4 v3, 0x0

    .local v3, "freq":I
    :goto_1a
    if-ge v3, v0, :cond_28

    .line 1260
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v3

    .line 1259
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1263
    .end local v0    # "freqCount":I
    .end local v2    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v3    # "freq":I
    :cond_28
    if-ltz p1, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    if-lt p1, v0, :cond_31

    goto :goto_36

    .line 1268
    :cond_31
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    return-object v0

    .line 1264
    :cond_36
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected frequency range ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") requested in getRxDurationCounter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-object v1
.end method

.method private blacklist getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 13
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "make"    # Z

    .line 1225
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    .line 1226
    if-nez p3, :cond_9

    return-object v1

    .line 1228
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    .line 1229
    .local v0, "freqCount":I
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    array-length v4, v3

    .line 1230
    .local v4, "signalStrengthCount":I
    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 1231
    .local v3, "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    const-class v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 1232
    const/4 v5, 0x0

    .local v5, "freq":I
    :goto_29
    if-ge v5, v0, :cond_3f

    .line 1233
    const/4 v6, 0x0

    .local v6, "strength":I
    :goto_2c
    if-ge v6, v4, :cond_3c

    .line 1234
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v5

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v6

    .line 1233
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1232
    .end local v6    # "strength":I
    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 1238
    .end local v0    # "freqCount":I
    .end local v3    # "timeBase":Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .end local v4    # "signalStrengthCount":I
    .end local v5    # "freq":I
    :cond_3f
    const-string v0, ") requested in getTxDurationCounter"

    const-string v3, "BatteryStatsImpl"

    if-ltz p1, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v4

    if-lt p1, v4, :cond_4c

    goto :goto_78

    .line 1243
    :cond_4c
    if-ltz p2, :cond_5d

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    array-length v2, v2

    if-lt p2, v2, :cond_56

    goto :goto_5d

    .line 1248
    :cond_56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    .line 1244
    :cond_5d
    :goto_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected signal strength ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return-object v1

    .line 1239
    :cond_78
    :goto_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency range ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-object v1
.end method


# virtual methods
.method public blacklist getFrequencyRangeCount()I
    .registers 2

    .line 1101
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    return v0
.end method

.method public blacklist getTimeSinceMark(IIJ)J
    .registers 10
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .line 1081
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const-wide/16 v1, 0x3e8

    mul-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3
.end method

.method public blacklist incrementRxDuration(IJ)V
    .registers 5
    .param p1, "frequencyRange"    # I
    .param p2, "durationMs"    # J

    .line 1117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1118
    return-void
.end method

.method public blacklist incrementTxDuration(IIJ)V
    .registers 6
    .param p1, "frequencyRange"    # I
    .param p2, "signalStrength"    # I
    .param p3, "durationMs"    # J

    .line 1109
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 1110
    return-void
.end method

.method public blacklist noteActive(ZJ)V
    .registers 6
    .param p1, "active"    # Z
    .param p2, "elapsedRealtimeMs"    # J

    .line 1032
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 1033
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    .line 1034
    if-eqz p1, :cond_17

    .line 1035
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_24

    .line 1038
    :cond_17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1041
    :goto_24
    return-void
.end method

.method public blacklist noteFrequencyRange(IJ)V
    .registers 6
    .param p1, "frequencyRange"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1048
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1050
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    .line 1052
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1053
    return-void

    .line 1055
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1057
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    .line 1058
    return-void
.end method

.method public blacklist noteSignalStrength(IJ)V
    .registers 7
    .param p1, "signalStrength"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 1064
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1066
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    .line 1068
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1069
    return-void

    .line 1071
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1073
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    .line 1074
    return-void
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 19
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1175
    .local v2, "oldFreqCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1176
    .local v3, "oldSignalStrengthCount":I
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v4, v4

    .line 1177
    .local v4, "currFreqCount":I
    const/4 v5, 0x5

    .line 1179
    .local v5, "currSignalStrengthCount":I
    const/4 v6, 0x0

    .local v6, "freq":I
    :goto_11
    const/4 v7, 0x5

    if-ge v6, v2, :cond_3f

    .line 1180
    const/4 v8, 0x0

    .local v8, "strength":I
    :goto_15
    if-ge v8, v3, :cond_3c

    .line 1181
    if-ge v6, v4, :cond_26

    if-lt v8, v7, :cond_1c

    goto :goto_26

    .line 1188
    :cond_1c
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_39

    .line 1183
    :cond_26
    :goto_26
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1186
    .local v9, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1187
    .end local v9    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    nop

    .line 1180
    :goto_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 1179
    .end local v8    # "strength":I
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 1193
    .end local v6    # "freq":I
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_70

    .line 1194
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_47
    if-ge v6, v2, :cond_70

    .line 1195
    const/4 v9, 0x0

    .local v9, "strength":I
    :goto_4a
    if-ge v9, v3, :cond_6d

    .line 1196
    if-ge v6, v4, :cond_50

    if-lt v9, v7, :cond_63

    .line 1198
    :cond_50
    new-instance v16, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1201
    .local v10, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1203
    .end local v10    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_63
    invoke-direct {v0, v6, v9, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1195
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 1194
    .end local v9    # "strength":I
    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 1208
    .end local v6    # "freq":I
    :cond_70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_98

    .line 1209
    const/4 v6, 0x0

    .restart local v6    # "freq":I
    :goto_77
    if-ge v6, v2, :cond_98

    .line 1210
    if-lt v6, v4, :cond_8e

    .line 1213
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v14}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1215
    .local v7, "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1216
    goto :goto_95

    .line 1218
    .end local v7    # "temp":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_8e
    invoke-direct {v0, v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1209
    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 1221
    .end local v6    # "freq":I
    :cond_98
    return-void
.end method

.method public blacklist reset(J)V
    .registers 8
    .param p1, "elapsedRealtimeUs"    # J

    .line 1124
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1125
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_30

    .line 1126
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_23

    .line 1127
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1128
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_19

    goto :goto_20

    .line 1129
    :cond_19
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1126
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1131
    .end local v2    # "j":I
    :cond_23
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v2, :cond_28

    goto :goto_2d

    .line 1132
    :cond_28
    aget-object v2, v2, v1

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 1125
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1134
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method public blacklist setMark(J)V
    .registers 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 1089
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1090
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_19

    .line 1091
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    const/4 v3, 0x5

    if-ge v2, v3, :cond_16

    .line 1092
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 1091
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1090
    .end local v2    # "j":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1095
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
    .registers 11
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1140
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    .line 1141
    .local v0, "freqCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1142
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1f

    .line 1144
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    if-ge v3, v1, :cond_1c

    .line 1145
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1144
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1143
    .end local v3    # "j":I
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1149
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_29

    .line 1150
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1152
    :cond_29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2d
    if-ge v2, v0, :cond_41

    .line 1154
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_30
    if-ge v5, v1, :cond_3e

    .line 1155
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1154
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1153
    .end local v5    # "j":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 1160
    .end local v2    # "i":I
    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v1, :cond_49

    .line 1161
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    .line 1163
    :cond_49
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    if-ge v1, v0, :cond_59

    .line 1165
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 1168
    .end local v1    # "i":I
    :cond_59
    :goto_59
    return-void
.end method
