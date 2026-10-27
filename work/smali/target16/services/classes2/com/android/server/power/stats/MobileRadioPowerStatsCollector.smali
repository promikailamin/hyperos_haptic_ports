.class public Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "MobileRadioPowerStatsCollector.java"


# static fields
.field protected static final MOBILE_RADIO_POWER_STATE_UPDATE_FREQ_MS:J = 0x927c0L

.field static final NETWORK_TYPES:[I


# instance fields
.field public mCallDurationSupplier:Ljava/util/function/LongSupplier;

.field public mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field public mDeviceStats:[J

.field public final mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

.field public mIsInitialized:Z

.field public mLastCallDuration:J

.field public mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field public mLastNetworkStats:Landroid/net/NetworkStats;

.field public mLastScanDuration:J

.field public mLastUpdateTimestampMillis:J

.field public mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field public volatile mNetworkStatsSupplier:Ljava/util/function/Supplier;

.field public final mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mScanDurationSupplier:Ljava/util/function/LongSupplier;

.field public volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 60
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;)V
    .registers 9

    .line 112
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v0, 0x8

    .line 113
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 115
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    .line 116
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    move-object v0, p0

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 117
    iput-object p1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    .line 118
    iput-object p2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    return-void
.end method

.method private ensureInitialized()Z
    .registers 13

    .line 133
    iget-boolean v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 141
    :cond_e
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getMobileNetworkStatsSupplier()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    .line 143
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getCallDurationSupplier()Ljava/util/function/LongSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Ljava/util/function/LongSupplier;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPhoneSignalScanDurationSupplier()Ljava/util/function/LongSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Ljava/util/function/LongSupplier;

    .line 146
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v3}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 149
    new-instance v3, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 151
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    move v0, v2

    :goto_4d
    const/4 v3, 0x3

    if-ge v0, v3, :cond_96

    const/4 v3, 0x2

    if-ne v0, v3, :cond_55

    move v3, v4

    goto :goto_56

    :cond_55
    move v3, v1

    :goto_56
    move v5, v2

    :goto_57
    if-ge v5, v3, :cond_93

    .line 156
    invoke-static {v0, v5}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result v6

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_6b

    .line 159
    sget-object v9, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    if-eqz v5, :cond_7f

    .line 162
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_78

    .line 163
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_78
    invoke-static {v5}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_7f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8a

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_8d

    :cond_8a
    const-string/jumbo v7, "other"

    :goto_8d
    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 171
    :cond_96
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0, v11}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 173
    new-instance v5, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 174
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 175
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getStateStatsArrayLength()I

    move-result v9

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v10

    const/16 v6, 0x8

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 177
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v5}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 178
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 180
    iput-boolean v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    return v1
.end method


# virtual methods
.method public final collectModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .registers 10

    .line 210
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 214
    :cond_6
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 231
    :try_start_1a
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_25

    goto :goto_2d

    .line 234
    :catch_25
    const-string v0, "MobileRadioPowerStatsCollector"

    const-string v2, "Cannot acquire ModemActivityInfo"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_2d
    if-nez v0, :cond_30

    return-object v1

    .line 242
    :cond_30
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-nez v1, :cond_39

    .line 243
    invoke-virtual {v0, v0}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v1

    goto :goto_3d

    .line 244
    :cond_39
    invoke-virtual {v1, v0}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v1

    .line 246
    :goto_3d
    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 248
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->setTimestamp(J)V

    .line 249
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceSleepTime([JJ)V

    .line 250
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 252
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v2

    .line 253
    iget-wide v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_71

    .line 254
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    sub-long v4, v2, v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallTime([JJ)V

    .line 256
    :cond_71
    iput-wide v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    .line 258
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v2

    .line 259
    iget-wide v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_88

    .line 260
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    sub-long v4, v2, v4

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceScanTime([JJ)V

    .line 262
    :cond_88
    iput-wide v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    .line 264
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v0, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 265
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 267
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v0

    if-nez v0, :cond_a7

    .line 268
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 271
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v6

    .line 272
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis()[I

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 268
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    goto :goto_d6

    :cond_a7
    const/4 v0, 0x0

    move v4, v0

    .line 274
    :goto_a9
    sget-object v2, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    array-length v2, v2

    if-ge v4, v2, :cond_d6

    const/4 v2, 0x6

    if-ne v4, v2, :cond_c5

    move v5, v0

    :goto_b2
    const/4 v2, 0x5

    if-ge v5, v2, :cond_d3

    .line 277
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 278
    invoke-virtual {v1, v4, v5}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v6

    .line 279
    invoke-virtual {v1, v4, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v8

    .line 277
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b2

    .line 282
    :cond_c5
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 284
    invoke-virtual {v1, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v6

    .line 285
    invoke-virtual {v1, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v8

    const/4 v5, 0x0

    .line 282
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    :cond_d3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a9

    :cond_d6
    :goto_d6
    return-object v1
.end method

.method public final collectNetworkStats()Landroid/net/NetworkStats;
    .registers 15

    .line 293
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats;

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 298
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v1, v0, v2}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 299
    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 300
    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStats$Entry;

    .line 301
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    .line 302
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v5

    .line 303
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    .line 304
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v3, v11

    if-nez v13, :cond_49

    cmp-long v13, v5, v11

    if-nez v13, :cond_49

    cmp-long v13, v7, v11

    if-nez v13, :cond_49

    cmp-long v11, v9, v11

    if-nez v11, :cond_49

    goto :goto_1a

    .line 309
    :cond_49
    iget-object v11, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v2

    .line 310
    iget-object v11, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    if-nez v11, :cond_83

    .line 312
    iget-object v11, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v11

    new-array v11, v11, [J

    .line 313
    iget-object v12, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v12, v12, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 315
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11, v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 316
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11, v7, v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 317
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11, v9, v10}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxPackets([JJ)V

    goto :goto_1a

    .line 319
    :cond_83
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v12

    add-long/2addr v12, v3

    invoke-virtual {v2, v11, v12, v13}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 320
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 321
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 322
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v11}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxPackets([JJ)V

    goto/16 :goto_1a

    :cond_ad
    return-object v1
.end method

.method public collectStats(JJ)Lcom/android/internal/os/PowerStats;
    .registers 15

    .line 186
    invoke-direct {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 191
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->collectModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v4

    .line 194
    invoke-virtual {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->collectNetworkStats()Landroid/net/NetworkStats;

    move-result-object v5

    .line 196
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0, v3, v6}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 198
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v6, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_34

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->setTimestamp(J)V

    .line 202
    :cond_34
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    if-eqz v3, :cond_3d

    move-wide v6, p1

    move-wide v8, p3

    .line 203
    invoke-interface/range {v3 .. v9}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;->onMobileRadioPowerStatsRetrieved(Landroid/telephony/ModemActivityInfo;Landroid/net/NetworkStats;JJ)V

    .line 206
    :cond_3d
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object p0
.end method

.method public setEnabled(Z)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 124
    iget-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 125
    const-string v1, "android.hardware.telephony"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    .line 125
    :cond_14
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void

    .line 128
    :cond_18
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    return-void
.end method

.method public final setTimestamp(J)V
    .registers 8

    .line 329
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 330
    iput-wide p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    return-void
.end method
