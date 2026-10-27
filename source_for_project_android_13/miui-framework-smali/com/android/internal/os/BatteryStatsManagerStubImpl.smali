.class public Lcom/android/internal/os/BatteryStatsManagerStubImpl;
.super Ljava/lang/Object;
.source "BatteryStatsManagerStubImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsManagerStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    }
.end annotation


# static fields
.field private static final blacklist BYTES_PER_GB:J = 0x40000000L

.field private static final blacklist BYTES_PER_KB:J = 0x400L

.field private static final blacklist BYTES_PER_MB:J = 0x100000L

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsManagerStubImpl"


# instance fields
.field public blacklist mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

.field private blacklist mCalculateAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentSoleUid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCurrentSoleUid:I

    return-void
.end method

.method private blacklist getProcessForegroundTimeMs(ILcom/android/internal/os/BatteryStatsImpl;J)J
    .registers 16
    .param p1, "curUid"    # I
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "realtimeUs"    # J

    .line 287
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid;

    .line 288
    .local v0, "uid":Landroid/os/BatteryStats$Uid;
    if-nez v0, :cond_f

    const-wide/16 v1, 0x0

    return-wide v1

    .line 290
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3, p4, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    .line 292
    .local v2, "topStateDurationUs":J
    const-wide/16 v4, 0x0

    .line 293
    .local v4, "foregroundActivityDurationUs":J
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 294
    .local v6, "foregroundActivityTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_20

    .line 295
    invoke-virtual {v6, p3, p4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    .line 299
    :cond_20
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 300
    .local v7, "totalForegroundDurationUs":J
    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    return-wide v9
.end method

.method private blacklist readSoleCalculateApp(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_41

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 309
    .local v3, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "pkgName":Ljava/lang/String;
    new-instance v5, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    iget-object v6, p2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v7, p2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 311
    .local v5, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_21
    const/16 v7, 0x64

    if-ge v6, v7, :cond_35

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_32

    .line 313
    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 311
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 317
    .end local v6    # "j":I
    :cond_35
    iput v3, v5, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I

    .line 318
    iput-object v4, v5, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;

    .line 319
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    .end local v3    # "uid":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 321
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_41
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method private blacklist writeSoleCalculateApp(Landroid/os/Parcel;J)V
    .registers 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 325
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 326
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_41

    .line 328
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 329
    .local v2, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v2, :cond_3e

    .line 330
    iget v3, v2, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_21
    const/16 v4, 0x64

    if-ge v3, v4, :cond_3e

    .line 333
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v3

    if-eqz v4, :cond_37

    .line 334
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    goto :goto_3b

    .line 337
    :cond_37
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 327
    .end local v2    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v3    # "j":I
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 342
    .end local v1    # "i":I
    :cond_41
    return-void
.end method


# virtual methods
.method public blacklist getAppScreenInfo(Lcom/android/internal/os/BatteryStatsImpl;J)[B
    .registers 20
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "elapsedRealtimeMs"    # J

    .line 206
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 207
    .local v2, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 209
    .local v3, "out":Landroid/os/Parcel;
    :try_start_7
    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_6b

    .line 210
    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/16 v0, 0x64

    new-array v5, v0, [J

    .line 214
    .local v5, "binTimes":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    iget-object v7, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_68

    .line 215
    iget-object v7, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 216
    .local v7, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v7, :cond_5f

    .line 217
    iget-object v8, v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;

    .line 218
    .local v8, "pkgName":Ljava/lang/String;
    iget v9, v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_34} :catch_7c
    .catchall {:try_start_7 .. :try_end_34} :catchall_78

    const-wide/16 v10, 0x3e8

    mul-long v12, p2, v10

    move-object/from16 v14, p1

    :try_start_3a
    invoke-direct {v1, v9, v14, v12, v13}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->getProcessForegroundTimeMs(ILcom/android/internal/os/BatteryStatsImpl;J)J

    move-result-wide v12

    .line 220
    .local v12, "fgTimeMs":J
    const/4 v9, 0x0

    .local v9, "bin":I
    :goto_3f
    if-ge v9, v0, :cond_55

    .line 221
    iget-object v15, v7, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v9

    mul-long v0, p2, v10

    invoke-virtual {v15, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    div-long/2addr v0, v10

    aput-wide v0, v5, v9

    .line 220
    add-int/lit8 v9, v9, 0x1

    const/16 v0, 0x64

    move-object/from16 v1, p0

    goto :goto_3f

    .line 225
    .end local v9    # "bin":I
    :cond_55
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v3, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_61

    .line 216
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v12    # "fgTimeMs":J
    :cond_5f
    move-object/from16 v14, p1

    .line 214
    .end local v7    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    :goto_61
    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x64

    move-object/from16 v1, p0

    goto :goto_1e

    :cond_68
    move-object/from16 v14, p1

    .line 230
    .end local v5    # "binTimes":[J
    .end local v6    # "i":I
    goto :goto_70

    .line 231
    :cond_6b
    move-object/from16 v14, p1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    :goto_70
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_74} :catch_76
    .catchall {:try_start_3a .. :try_end_74} :catchall_87

    move-object v2, v0

    goto :goto_82

    .line 234
    :catch_76
    move-exception v0

    goto :goto_7f

    .line 237
    :catchall_78
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_88

    .line 234
    :catch_7c
    move-exception v0

    move-object/from16 v14, p1

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    :goto_7f
    :try_start_7f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_87

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_82
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-object v2

    .line 237
    :catchall_87
    move-exception v0

    :goto_88
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v0
.end method

.method public blacklist getDefaultDataSlotId()I
    .registers 2

    .line 113
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    return v0
.end method

.method public blacklist getScreenCalculateMap()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getTargetScreenInfo(Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl;J)[B
    .registers 21
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "elapsedRealtimeMs"    # J

    .line 244
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 245
    .local v2, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 247
    .local v3, "out":Landroid/os/Parcel;
    :try_start_7
    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_80

    .line 248
    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/16 v0, 0x64

    new-array v5, v0, [J

    .line 251
    .local v5, "binTimes":[J
    const/4 v6, 0x0

    .line 252
    .local v6, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    const/4 v7, 0x0

    .line 253
    .local v7, "isExist":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_20
    iget-object v9, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_44

    .line 254
    iget-object v9, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    move-object v6, v9

    .line 255
    if-eqz v6, :cond_3f

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_95
    .catchall {:try_start_7 .. :try_end_35} :catchall_8f

    move-object/from16 v10, p1

    :try_start_37
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 256
    const/4 v7, 0x1

    .line 257
    goto :goto_46

    .line 255
    :cond_3f
    move-object/from16 v10, p1

    .line 253
    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_44
    move-object/from16 v10, p1

    .line 260
    .end local v8    # "i":I
    :goto_46
    if-eqz v7, :cond_7a

    .line 261
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v8, v6, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4e} :catch_78
    .catchall {:try_start_37 .. :try_end_4e} :catchall_76

    const-wide/16 v11, 0x3e8

    mul-long v13, p3, v11

    move-object/from16 v9, p2

    :try_start_54
    invoke-direct {v1, v8, v9, v13, v14}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->getProcessForegroundTimeMs(ILcom/android/internal/os/BatteryStatsImpl;J)J

    move-result-wide v13

    .line 264
    .local v13, "fgTimeMs":J
    const/4 v8, 0x0

    .local v8, "bin":I
    :goto_59
    if-ge v8, v0, :cond_6f

    .line 265
    iget-object v15, v6, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v8

    mul-long v0, p3, v11

    invoke-virtual {v15, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    div-long/2addr v0, v11

    aput-wide v0, v5, v8

    .line 264
    add-int/lit8 v8, v8, 0x1

    const/16 v0, 0x64

    move-object/from16 v1, p0

    goto :goto_59

    .line 269
    .end local v8    # "bin":I
    :cond_6f
    invoke-virtual {v3, v13, v14}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_7f

    .line 281
    .end local v5    # "binTimes":[J
    .end local v6    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v7    # "isExist":Z
    .end local v13    # "fgTimeMs":J
    :catchall_76
    move-exception v0

    goto :goto_92

    .line 278
    :catch_78
    move-exception v0

    goto :goto_98

    .line 272
    .restart local v5    # "binTimes":[J
    .restart local v6    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .restart local v7    # "isExist":Z
    :cond_7a
    move-object/from16 v9, p2

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    .end local v5    # "binTimes":[J
    .end local v6    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    .end local v7    # "isExist":Z
    :goto_7f
    goto :goto_87

    .line 275
    :cond_80
    move-object/from16 v10, p1

    move-object/from16 v9, p2

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    :goto_87
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_8b} :catch_8d
    .catchall {:try_start_54 .. :try_end_8b} :catchall_a2

    move-object v2, v0

    goto :goto_9d

    .line 278
    :catch_8d
    move-exception v0

    goto :goto_9a

    .line 281
    :catchall_8f
    move-exception v0

    move-object/from16 v10, p1

    :goto_92
    move-object/from16 v9, p2

    goto :goto_a3

    .line 278
    :catch_95
    move-exception v0

    move-object/from16 v10, p1

    :goto_98
    move-object/from16 v9, p2

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    :goto_9a
    :try_start_9a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_a2

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9d
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-object v2

    .line 281
    :catchall_a2
    move-exception v0

    :goto_a3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v0
.end method

.method public blacklist noteActivityPausedLocked(IJJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 182
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCurrentSoleUid:I

    .line 184
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 185
    .local v1, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v1, :cond_24

    iget v2, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    if-le v2, v0, :cond_24

    .line 186
    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v3, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 187
    iput v0, v1, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    .line 190
    .end local v1    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    :cond_24
    return-void
.end method

.method public blacklist noteActivityResumedLocked(Lcom/android/internal/os/BatteryStatsImpl;IJJLjava/lang/String;)V
    .registers 12
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J
    .param p7, "packageName"    # Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCurrentSoleUid:I

    .line 155
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2f

    .line 156
    new-instance v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 157
    .local v0, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    iput p2, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->uid:I

    .line 158
    iput-object p7, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->packageName:Ljava/lang/String;

    .line 159
    iget v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-le v2, v1, :cond_29

    .line 160
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 161
    iget v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    iput v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    .line 163
    :cond_29
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4a

    .line 165
    .end local v0    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 166
    .restart local v0    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v0, :cond_4a

    iget v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    if-le v2, v1, :cond_4a

    .line 167
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 168
    iget v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mScreenBrightnessBin:I

    iput v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    .line 178
    :cond_4a
    :goto_4a
    return-void
.end method

.method public blacklist noteAudioOffLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 38
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    if-eqz v0, :cond_7

    .line 39
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;->noteAudioOffLocked(I)V

    .line 40
    :cond_7
    return-void
.end method

.method public blacklist noteAudioOnLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 32
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    if-eqz v0, :cond_7

    .line 33
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;->noteAudioOnLocked(I)V

    .line 34
    :cond_7
    return-void
.end method

.method public blacklist noteResetAudioLocked()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    if-eqz v0, :cond_7

    .line 45
    invoke-interface {v0}, Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;->noteResetAudioLocked()V

    .line 46
    :cond_7
    return-void
.end method

.method public blacklist noteScreenBrightnessLocked(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V
    .registers 10
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "bin"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .line 194
    iget v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCurrentSoleUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 195
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 196
    .local v0, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    if-eqz v0, :cond_25

    iget v2, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    if-le v2, v1, :cond_25

    .line 197
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 198
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p2

    invoke-virtual {v1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 199
    iput p2, v0, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->oldBin:I

    .line 202
    .end local v0    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    :cond_25
    return-void
.end method

.method public blacklist noteStartGpsLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 50
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    if-eqz v0, :cond_7

    .line 51
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;->noteStartGpsLocked(I)V

    .line 52
    :cond_7
    return-void
.end method

.method public blacklist noteStopGpsLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    if-eqz v0, :cond_7

    .line 57
    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;->noteStopGpsLocked(I)V

    .line 58
    :cond_7
    return-void
.end method

.method public blacklist noteSyncStart(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "start"    # Z

    .line 67
    const/16 v0, 0x2710

    if-lt p2, v0, :cond_23

    const/16 v0, 0x4e1f

    if-le p2, v0, :cond_9

    goto :goto_23

    .line 69
    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 70
    .local v0, "uids":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 71
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    const/4 v3, 0x4

    .line 72
    if-eqz p3, :cond_19

    const-string v2, "syncstart"

    goto :goto_1b

    :cond_19
    const-string v2, "syncend"

    :goto_1b
    move-object v4, v2

    .line 71
    move v2, p3

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V

    .line 73
    return-void

    .line 68
    .end local v0    # "uids":[I
    :cond_23
    :goto_23
    return-void
.end method

.method public blacklist noteVideoFps(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "fps"    # I

    .line 371
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 372
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->notifyVideoFps(II)V

    .line 374
    :cond_d
    return-void
.end method

.method public blacklist notifyDetailsWakeUp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyEvent(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public blacklist notifyWakeUp(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyEvent(ILandroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public blacklist readFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->readSoleCalculateApp(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 129
    return-void
.end method

.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->readSoleCalculateApp(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 119
    return-void
.end method

.method public blacklist resetAllStatsLocked(JJ)V
    .registers 9
    .param p1, "uptimeMillis"    # J
    .param p3, "elapsedRealtimeMillis"    # J

    .line 138
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 139
    :cond_9
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p3

    .line 140
    .local v0, "elapsedRealtimeUs":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 141
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;

    .line 142
    .local v3, "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;->reset(J)V

    .line 140
    .end local v3    # "app":Lcom/android/internal/os/BatteryStatsManagerStubImpl$SoleCalculateApp;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 144
    .end local v2    # "i":I
    :cond_23
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 145
    :try_start_26
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCalculateAppMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 146
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_30

    .line 147
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mCurrentSoleUid:I

    .line 148
    return-void

    .line 146
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v3
.end method

.method public blacklist setActiveCallback(Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    .line 62
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->mActiveCallback:Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;

    .line 63
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->writeSoleCalculateApp(Landroid/os/Parcel;J)V

    .line 124
    return-void
.end method

.method public blacklist writeToParcelLocked(Landroid/os/Parcel;J)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsManagerStubImpl;->writeSoleCalculateApp(Landroid/os/Parcel;J)V

    .line 134
    return-void
.end method
