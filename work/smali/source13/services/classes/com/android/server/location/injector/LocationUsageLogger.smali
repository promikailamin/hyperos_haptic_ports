.class public Lcom/android/server/location/injector/LocationUsageLogger;
.super Ljava/lang/Object;
.source "LocationUsageLogger.java"


# static fields
.field private static final API_USAGE_LOG_HOURLY_CAP:I = 0x3c

.field private static final ONE_HOUR_IN_MILLIS:I = 0x36ee80

.field private static final ONE_MINUTE_IN_MILLIS:I = 0xea60

.field private static final ONE_SEC_IN_MILLIS:I = 0x3e8


# instance fields
.field private mApiUsageLogHourlyCount:I

.field private mLastApiUsageLogHour:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    return-void
.end method

.method private static bucketizeDistance(F)I
    .registers 3
    .param p0, "smallestDisplacement"    # F

    .line 156
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_7

    .line 157
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_7
    cmpl-float v0, p0, v0

    if-lez v0, :cond_13

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_13

    .line 159
    const/4 v0, 0x2

    return v0

    .line 161
    :cond_13
    const/4 v0, 0x3

    return v0
.end method

.method private static bucketizeExpireIn(J)I
    .registers 4
    .param p0, "expireIn"    # J

    .line 184
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 185
    const/4 v0, 0x6

    return v0

    .line 188
    :cond_b
    const-wide/16 v0, 0x4e20

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 189
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_13
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_1c

    .line 191
    const/4 v0, 0x2

    return v0

    .line 192
    :cond_1c
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_25

    .line 193
    const/4 v0, 0x3

    return v0

    .line 194
    :cond_25
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_2e

    .line 195
    const/4 v0, 0x4

    return v0

    .line 197
    :cond_2e
    const/4 v0, 0x5

    return v0
.end method

.method private static bucketizeInterval(J)I
    .registers 4
    .param p0, "interval"    # J

    .line 140
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 141
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_8
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gez v0, :cond_10

    .line 143
    const/4 v0, 0x2

    return v0

    .line 144
    :cond_10
    const-wide/32 v0, 0xea60

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 145
    const/4 v0, 0x3

    return v0

    .line 146
    :cond_19
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_22

    .line 147
    const/4 v0, 0x4

    return v0

    .line 148
    :cond_22
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p0, v0

    if-gez v0, :cond_2b

    .line 149
    const/4 v0, 0x5

    return v0

    .line 151
    :cond_2b
    const/4 v0, 0x6

    return v0
.end method

.method private static bucketizeProvider(Ljava/lang/String;)I
    .registers 2
    .param p0, "provider"    # Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 127
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_b
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 129
    const/4 v0, 0x2

    return v0

    .line 130
    :cond_16
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 131
    const/4 v0, 0x3

    return v0

    .line 132
    :cond_21
    const-string v0, "fused"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 133
    const/4 v0, 0x4

    return v0

    .line 135
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private static bucketizeRadius(F)I
    .registers 2
    .param p0, "radius"    # F

    .line 166
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    .line 167
    const/4 v0, 0x7

    return v0

    .line 168
    :cond_7
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_f

    .line 169
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_f
    const/high16 v0, 0x43480000    # 200.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    .line 171
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_17
    const/high16 v0, 0x43960000    # 300.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1f

    .line 173
    const/4 v0, 0x3

    return v0

    .line 174
    :cond_1f
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_27

    .line 175
    const/4 v0, 0x4

    return v0

    .line 176
    :cond_27
    const v0, 0x461c4000    # 10000.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_30

    .line 177
    const/4 v0, 0x5

    return v0

    .line 179
    :cond_30
    const/4 v0, 0x6

    return v0
.end method

.method private static categorizeActivityImportance(Z)I
    .registers 2
    .param p0, "foreground"    # Z

    .line 202
    if-eqz p0, :cond_4

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method private static getCallbackType(IZZ)I
    .registers 4
    .param p0, "apiType"    # I
    .param p1, "hasListener"    # Z
    .param p2, "hasIntent"    # Z

    .line 211
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 212
    const/4 v0, 0x1

    return v0

    .line 217
    :cond_5
    if-eqz p2, :cond_9

    .line 218
    const/4 v0, 0x3

    return v0

    .line 219
    :cond_9
    if-eqz p1, :cond_d

    .line 220
    const/4 v0, 0x2

    return v0

    .line 222
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized hitApiUsageLogCap()Z
    .registers 7

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    .line 228
    .local v0, "currentHour":J
    iget-wide v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    .line 229
    iput-wide v0, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mLastApiUsageLogHour:J

    .line 230
    iput v3, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2b

    .line 231
    monitor-exit p0

    return v3

    .line 233
    .end local p0    # "this":Lcom/android/server/location/injector/LocationUsageLogger;
    :cond_1a
    :try_start_1a
    iget v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/16 v5, 0x3c

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/injector/LocationUsageLogger;->mApiUsageLogHourlyCount:I
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    .line 235
    if-lt v2, v5, :cond_29

    move v3, v4

    :cond_29
    monitor-exit p0

    return v3

    .line 226
    .end local v0    # "currentHour":J
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public logLocationApiUsage(IILjava/lang/String;)V
    .registers 20
    .param p1, "usageType"    # I
    .param p2, "apiInUse"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .line 100
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    return-void

    .line 104
    :cond_7
    const/16 v1, 0xd2

    const/4 v4, 0x0

    .line 107
    invoke-static/range {p3 .. p3}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 113
    const/4 v0, 0x1

    move/from16 v15, p2

    invoke-static {v15, v0, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    .line 104
    move/from16 v2, p1

    move/from16 v3, p2

    move-object v15, v0

    invoke-static/range {v1 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 122
    goto :goto_2f

    .line 120
    :catch_27
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2f
    return-void
.end method

.method public logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V
    .registers 30
    .param p1, "usageType"    # I
    .param p2, "apiInUse"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "locationRequest"    # Landroid/location/LocationRequest;
    .param p7, "hasListener"    # Z
    .param p8, "hasIntent"    # Z
    .param p9, "geofence"    # Landroid/location/Geofence;
    .param p10, "foreground"    # Z

    .line 56
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/injector/LocationUsageLogger;->hitApiUsageLogCap()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    return-void

    .line 60
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p6, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    .line 61
    .local v2, "isLocationRequestNull":Z
    :goto_e
    if-nez p9, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    .line 63
    .local v3, "isGeofenceNull":Z
    :goto_13
    const/16 v4, 0xd2

    .line 65
    if-eqz v2, :cond_19

    .line 66
    move v8, v1

    goto :goto_1e

    .line 67
    :cond_19
    invoke-static/range {p5 .. p5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeProvider(Ljava/lang/String;)I

    move-result v5

    move v8, v5

    .line 68
    :goto_1e
    if-eqz v2, :cond_22

    .line 69
    move v9, v1

    goto :goto_27

    .line 70
    :cond_22
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getQuality()I

    move-result v5

    move v9, v5

    .line 71
    :goto_27
    if-eqz v2, :cond_2b

    .line 72
    move v10, v1

    goto :goto_34

    .line 73
    :cond_2b
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeInterval(J)I

    move-result v5

    move v10, v5

    .line 74
    :goto_34
    if-eqz v2, :cond_38

    .line 75
    move v11, v1

    goto :goto_42

    .line 76
    :cond_38
    nop

    .line 77
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v5

    .line 76
    invoke-static {v5}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeDistance(F)I

    move-result v5

    move v11, v5

    .line 78
    :goto_42
    if-eqz v2, :cond_48

    const-wide/16 v5, 0x0

    :goto_46
    move-wide v12, v5

    goto :goto_4e

    :cond_48
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v5

    int-to-long v5, v5

    goto :goto_46

    .line 80
    :goto_4e
    if-nez v2, :cond_5f

    move/from16 v15, p1

    if-ne v15, v0, :cond_55

    goto :goto_61

    .line 82
    :cond_55
    invoke-virtual/range {p6 .. p6}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeExpireIn(J)I

    move-result v0

    move v14, v0

    goto :goto_62

    .line 80
    :cond_5f
    move/from16 v15, p1

    .line 81
    :goto_61
    move v14, v1

    .line 83
    :goto_62
    move/from16 v7, p2

    move/from16 v6, p7

    move/from16 v5, p8

    invoke-static {v7, v6, v5}, Lcom/android/server/location/injector/LocationUsageLogger;->getCallbackType(IZZ)I

    move-result v0

    .line 84
    if-eqz v3, :cond_71

    .line 85
    move/from16 v16, v1

    goto :goto_7b

    .line 86
    :cond_71
    invoke-virtual/range {p9 .. p9}, Landroid/location/Geofence;->getRadius()F

    move-result v1

    invoke-static {v1}, Lcom/android/server/location/injector/LocationUsageLogger;->bucketizeRadius(F)I

    move-result v1

    move/from16 v16, v1

    .line 87
    :goto_7b
    invoke-static/range {p10 .. p10}, Lcom/android/server/location/injector/LocationUsageLogger;->categorizeActivityImportance(Z)I

    move-result v17

    .line 63
    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move v15, v0

    move-object/from16 v18, p4

    invoke-static/range {v4 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIJIIIILjava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8c

    .line 92
    .end local v2    # "isLocationRequestNull":Z
    .end local v3    # "isGeofenceNull":Z
    goto :goto_94

    .line 89
    :catch_8c
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Failed to log API usage to statsd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_94
    return-void
.end method
