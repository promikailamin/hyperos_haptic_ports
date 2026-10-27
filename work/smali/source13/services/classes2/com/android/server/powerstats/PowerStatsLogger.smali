.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "PowerStatsLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final MSG_LOG_TO_DATA_STORAGE_BATTERY_DROP:I = 0x0

.field protected static final MSG_LOG_TO_DATA_STORAGE_HIGH_FREQUENCY:I = 0x2

.field protected static final MSG_LOG_TO_DATA_STORAGE_LOW_FREQUENCY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDataStoragePath:Ljava/io/File;

.field private mDeleteMeterDataOnBoot:Z

.field private mDeleteModelDataOnBoot:Z

.field private mDeleteResidencyDataOnBoot:Z

.field private final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field private final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field private final mStartWallTime:J


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 62
    const-class v0, Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "dataStoragePath"    # Ljava/io/File;
    .param p4, "meterFilename"    # Ljava/lang/String;
    .param p5, "meterCacheFilename"    # Ljava/lang/String;
    .param p6, "modelFilename"    # Ljava/lang/String;
    .param p7, "modelCacheFilename"    # Ljava/lang/String;
    .param p8, "residencyFilename"    # Ljava/lang/String;
    .param p9, "residencyCacheFilename"    # Ljava/lang/String;
    .param p10, "powerStatsHALWrapper"    # Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p2

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 323
    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 324
    move-object/from16 v7, p3

    iput-object v7, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 326
    new-instance v8, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v9, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v10, p4

    invoke-direct {v8, v1, v9, v10}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 328
    new-instance v9, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v11, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v12, p6

    invoke-direct {v9, v1, v11, v12}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 330
    new-instance v11, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object v13, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    move-object/from16 v14, p8

    invoke-direct {v11, v1, v13, v14}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 333
    invoke-interface/range {p10 .. p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v13

    .line 334
    .local v13, "channels":[Landroid/hardware/power/stats/Channel;
    invoke-static {v13}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->getProtoBytes([Landroid/hardware/power/stats/Channel;)[B

    move-result-object v15

    .line 335
    .local v15, "channelBytes":[B
    invoke-direct {v0, v2, v15}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    .line 336
    if-eqz v1, :cond_59

    .line 337
    invoke-virtual {v8}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 338
    invoke-direct {v0, v2, v15}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 341
    :cond_59
    invoke-interface/range {p10 .. p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v1

    .line 342
    .local v1, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B

    move-result-object v8

    .line 343
    .local v8, "energyConsumerBytes":[B
    move-object/from16 v16, v1

    .end local v1    # "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    .local v16, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-direct {v0, v3, v8}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    .line 344
    if-eqz v1, :cond_71

    .line 345
    invoke-virtual {v9}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 346
    invoke-direct {v0, v3, v8}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 349
    :cond_71
    invoke-interface/range {p10 .. p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1

    .line 350
    .local v1, "powerEntities":[Landroid/hardware/power/stats/PowerEntity;
    invoke-static {v1}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B

    move-result-object v9

    .line 351
    .local v9, "powerEntityBytes":[B
    move-object/from16 v17, v1

    .end local v1    # "powerEntities":[Landroid/hardware/power/stats/PowerEntity;
    .local v17, "powerEntities":[Landroid/hardware/power/stats/PowerEntity;
    invoke-direct {v0, v4, v9}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    .line 352
    if-eqz v1, :cond_89

    .line 353
    invoke-virtual {v11}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 354
    invoke-direct {v0, v4, v9}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 356
    :cond_89
    return-void
.end method

.method private dataChanged(Ljava/lang/String;[B)Z
    .registers 9
    .param p1, "cachedFilename"    # Ljava/lang/String;
    .param p2, "dataCurrent"    # [B

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "dataChanged":Z
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 259
    :cond_11
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .local v1, "cachedFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v2, v2, [B

    .line 267
    .local v2, "dataCached":[B
    :try_start_25
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 268
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_31} :catch_33

    .line 271
    nop

    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3b

    .line 269
    :catch_33
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v5, "Failed to read cached data from file"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3b
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 275
    .end local v2    # "dataCached":[B
    goto :goto_44

    .line 279
    :cond_43
    const/4 v0, 0x1

    .line 283
    .end local v1    # "cachedFile":Ljava/io/File;
    :cond_44
    :goto_44
    return v0
.end method

.method private updateCacheFile(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "cacheFilename"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 288
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 290
    .local v0, "atomicCachedFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 291
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 295
    .end local v0    # "atomicCachedFile":Landroid/util/AtomicFile;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1f

    .line 293
    :catch_17
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write current data to cached file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1f
    return-void
.end method


# virtual methods
.method public getDeleteMeterDataOnBoot()Z
    .registers 2

    .line 299
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    return v0
.end method

.method public getDeleteModelDataOnBoot()Z
    .registers 2

    .line 303
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    return v0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .registers 2

    .line 307
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    return v0
.end method

.method public getStartWallTime()J
    .registers 3

    .line 312
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_64

    goto :goto_62

    .line 86
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v2, v1, [I

    .line 87
    invoke-interface {v0, v2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v0

    .line 88
    .local v0, "energyMeasurements":[Landroid/hardware/power/stats/EnergyMeasurement;
    iget-wide v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v2, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyMeasurement;J)V

    .line 90
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 91
    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyMeasurement;)[B

    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 95
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v3, v1, [I

    .line 96
    invoke-interface {v2, v3}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v2

    .line 97
    .local v2, "ecrNoAttribution":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-wide v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 99
    iget-object v3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 100
    invoke-static {v2, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object v1

    .line 99
    invoke-virtual {v3, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 102
    goto :goto_62

    .line 108
    .end local v0    # "energyMeasurements":[Landroid/hardware/power/stats/EnergyMeasurement;
    .end local v2    # "ecrNoAttribution":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v1, [I

    .line 109
    invoke-interface {v0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v0

    .line 110
    .local v0, "ecrAttribution":[Landroid/hardware/power/stats/EnergyConsumerResult;
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 112
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    const/4 v2, 0x1

    .line 113
    invoke-static {v0, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 115
    goto :goto_62

    .line 121
    .end local v0    # "ecrAttribution":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v1, [I

    .line 122
    invoke-interface {v0, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v0

    .line 123
    .local v0, "stateResidencyResults":[Landroid/hardware/power/stats/StateResidencyResult;
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/StateResidencyResult;J)V

    .line 125
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 126
    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->getProtoBytes([Landroid/hardware/power/stats/StateResidencyResult;)[B

    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 130
    .end local v0    # "stateResidencyResults":[Landroid/hardware/power/stats/StateResidencyResult;
    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_34
        :pswitch_7
    .end packed-switch
.end method

.method public writeMeterDataToFile(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 141
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 144
    .local v0, "pos":Landroid/util/proto/ProtoOutputStream;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1

    .line 145
    .local v1, "channel":[Landroid/hardware/power/stats/Channel;
    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    .line 148
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 168
    .end local v1    # "channel":[Landroid/hardware/power/stats/Channel;
    goto :goto_21

    .line 166
    :catch_19
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write energy meter info to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 171
    return-void
.end method

.method public writeModelDataToFile(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 182
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 185
    .local v0, "pos":Landroid/util/proto/ProtoOutputStream;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v1

    .line 186
    .local v1, "energyConsumer":[Landroid/hardware/power/stats/EnergyConsumer;
    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 189
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$2;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 209
    .end local v1    # "energyConsumer":[Landroid/hardware/power/stats/EnergyConsumer;
    goto :goto_21

    .line 207
    :catch_19
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write energy model info to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 212
    return-void
.end method

.method public writeResidencyDataToFile(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 223
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 226
    .local v0, "pos":Landroid/util/proto/ProtoOutputStream;
    :try_start_5
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v1

    .line 227
    .local v1, "powerEntity":[Landroid/hardware/power/stats/PowerEntity;
    invoke-static {v1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsLogger$3;

    invoke-direct {v3, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$3;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, v3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_19

    .line 250
    .end local v1    # "powerEntity":[Landroid/hardware/power/stats/PowerEntity;
    goto :goto_21

    .line 248
    :catch_19
    move-exception v1

    .line 249
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write residency data to incident report."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1    # "e":Ljava/io/IOException;
    :goto_21
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 253
    return-void
.end method
