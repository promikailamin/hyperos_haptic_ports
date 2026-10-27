.class public Lcom/android/server/power/stats/wakeups/CpuWakeupStats;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"


# static fields
.field public static final WAKEUP_WRITE_DELAY_MS:J


# instance fields
.field final mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

.field public final mHandler:Landroid/os/Handler;

.field public final mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

.field public final mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

.field public final mReusableUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field final mWakeupAttribution:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;>;"
        }
    .end annotation
.end field

.field final mWakeupEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$d7dhXD3GZkZXJedQxynsy4Ps-WI(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-D7NPzbgSwY5OseXB1GuV8c9rM(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->lambda$new$0()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 70
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-direct {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    .line 78
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    .line 82
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    .line 90
    invoke-static {p1, p2}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->getInstance(Landroid/content/Context;I)Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    .line 91
    new-instance p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    new-instance p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;)V

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;-><init>(Ljava/util/function/LongSupplier;)V

    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    .line 93
    iput-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static stringToKnownSubsystem(Ljava/lang/String;)I
    .registers 8

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_5e

    :goto_10
    move p0, v6

    goto :goto_53

    :sswitch_12
    const-string v0, "Alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_10

    :cond_1b
    move p0, v1

    goto :goto_53

    :sswitch_1d
    const-string v0, "Wifi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_10

    :cond_26
    move p0, v2

    goto :goto_53

    :sswitch_28
    const-string v0, "Bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto :goto_10

    :cond_31
    move p0, v3

    goto :goto_53

    :sswitch_33
    const-string v0, "Sound_trigger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_10

    :cond_3c
    move p0, v4

    goto :goto_53

    :sswitch_3e
    const-string v0, "Cellular_data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto :goto_10

    :cond_47
    move p0, v5

    goto :goto_53

    :sswitch_49
    const-string v0, "Sensor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto :goto_10

    :cond_52
    const/4 p0, 0x0

    :goto_53
    packed-switch p0, :pswitch_data_78

    return v6

    :pswitch_57
    return v5

    :pswitch_58
    return v4

    :pswitch_59
    const/4 p0, 0x6

    return p0

    :pswitch_5b
    return v3

    :pswitch_5c
    return v1

    :pswitch_5d
    return v2

    :sswitch_data_5e
    .sparse-switch
        -0x6c9ac026 -> :sswitch_49
        -0x41b3aec1 -> :sswitch_3e
        -0x194b8998 -> :sswitch_33
        -0x13331d72 -> :sswitch_28
        0x292335 -> :sswitch_1d
        0x3c68a31 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch
.end method

.method public static subsystemToStatsReason(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_11

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_11
    return v0
.end method

.method public static subsystemToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1c

    .line 540
    :pswitch_3
    const-string p0, "N/A"

    return-object p0

    .line 536
    :pswitch_6
    const-string p0, "Bluetooth"

    return-object p0

    .line 534
    :pswitch_9
    const-string p0, "Cellular_data"

    return-object p0

    .line 532
    :pswitch_c
    const-string p0, "Sensor"

    return-object p0

    .line 530
    :pswitch_f
    const-string p0, "Sound_trigger"

    return-object p0

    .line 528
    :pswitch_12
    const-string p0, "Wifi"

    return-object p0

    .line 526
    :pswitch_15
    const-string p0, "Alarm"

    return-object p0

    .line 538
    :pswitch_18
    const-string p0, "Unknown"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_18
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static typeToStatsType(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method


# virtual methods
.method public final declared-synchronized attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .registers 14

    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 253
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v2, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1f

    .line 255
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 256
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v3, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1f

    :catchall_1c
    move-exception v0

    move-object p1, v0

    goto :goto_42

    .line 258
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v2, v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    const/4 v4, 0x0

    .line 260
    :goto_24
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 261
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 265
    iget-wide v5, p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    sub-long v8, v5, v2

    add-long v10, v5, v2

    .line 268
    iget-object v6, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->removeBetween(IJJ)Landroid/util/SparseIntArray;

    move-result-object v5

    .line 270
    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_1c

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 272
    :cond_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_1c

    throw p1
.end method

.method public final declared-synchronized attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z
    .registers 10

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 278
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long v3, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    move-result v2

    .line 280
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    add-long/2addr p2, v0

    invoke-virtual {v3, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    :goto_14
    const/4 p3, 0x0

    if-gt v2, p2, :cond_6c

    .line 284
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 285
    iget-object v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mResponsibleSubsystems:Landroid/util/SparseBooleanArray;

    .line 286
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 289
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v1, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {p2, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    if-nez p2, :cond_42

    .line 292
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v1, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_42

    :catchall_40
    move-exception p1

    goto :goto_6e

    .line 295
    :cond_42
    :goto_42
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_52

    .line 297
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_66

    .line 299
    :cond_52
    :goto_52
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge p3, p1, :cond_66

    .line 300
    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_40

    add-int/lit8 p3, p3, 0x1

    goto :goto_52

    .line 303
    :cond_66
    :goto_66
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 306
    :cond_6c
    monitor-exit p0

    return p3

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_40

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;J)V
    .registers 15

    monitor-enter p0

    .line 311
    :try_start_1
    const-string v0, "CPU wakeup stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 314
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 315
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 317
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/IrqDeviceMap;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 318
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 320
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 321
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current proc-state map ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 325
    :goto_45
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    if-lez v1, :cond_58

    .line 327
    const-string v2, ", "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_58

    :catchall_55
    move-exception p1

    goto/16 :goto_1e3

    .line 329
    :cond_58
    :goto_58
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 332
    :cond_82
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 333
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 334
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 336
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 337
    const-string v2, "Wakeup events:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a0
    if-ltz v2, :cond_166

    .line 340
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 341
    const-string v3, ":"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 344
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    .line 345
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 346
    const-string v4, "Attribution: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v5, v3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_d6

    .line 350
    const-string v3, "N/A"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_15f

    :cond_d6
    move v4, v0

    .line 352
    :goto_d7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_15c

    if-lez v4, :cond_e4

    .line 354
    const-string v5, ", "

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    :cond_e4
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 357
    invoke-static {v0, v0}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    .line 356
    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v5

    .line 358
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v7

    .line 359
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 361
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string v6, " ["

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    if-eqz v6, :cond_148

    move v8, v0

    .line 365
    :goto_113
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_146

    if-lez v8, :cond_120

    .line 367
    const-string v9, ", "

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 369
    :cond_120
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-static {p1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 370
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 370
    invoke-static {v10}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    :cond_146
    add-int/lit8 v7, v7, 0x1

    .line 375
    :cond_148
    const-string v6, "]"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 378
    invoke-static {v7, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    .line 377
    invoke-virtual {v1, v6, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d7

    .line 380
    :cond_15c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 382
    :goto_15f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a0

    .line 384
    :cond_166
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 386
    const-string p2, "Attribution stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    :goto_171
    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_1be

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Subsystem "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result p3

    invoke-static {p3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 390
    const-string p2, ": "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p2

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_171

    .line 394
    :cond_1be
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Total: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_1e1
    .catchall {:try_start_1 .. :try_end_1e1} :catchall_55

    .line 399
    monitor-exit p0

    return-void

    :goto_1e3
    :try_start_1e3
    monitor-exit p0
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_55

    throw p1
.end method

.method public final synthetic lambda$new$0()J
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    return-wide v0
.end method

.method public final synthetic lambda$noteWakeupTimeAndReason$1(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    return-void
.end method

.method public final declared-synchronized logWakeupAttribution(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 131
    :try_start_5
    iget-object v2, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mDevices:[Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup$IrqDevice;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_39

    .line 132
    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/4 v11, 0x0

    const/16 v5, 0x24c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 138
    const-string/jumbo v2, "wakeup_attribution"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " --"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    .line 140
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    goto/16 :goto_101

    .line 143
    :cond_39
    :try_start_39
    iget-object v2, v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    iget-wide v5, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_5d

    .line 148
    const-string v2, "CpuWakeupStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected null attribution found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_36

    .line 149
    monitor-exit p0

    return-void

    .line 152
    :cond_5d
    :try_start_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 154
    :goto_64
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_f1

    .line 155
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 156
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseIntArray;

    if-eqz v9, :cond_9f

    .line 160
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-nez v10, :cond_7d

    goto :goto_9f

    .line 163
    :cond_7d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 164
    new-array v11, v10, [I

    .line 165
    new-array v12, v10, [I

    move v13, v6

    :goto_86
    if-ge v13, v10, :cond_9b

    .line 167
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v11, v13

    .line 169
    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    .line 168
    invoke-static {v14}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_86

    :cond_9b
    move-object v15, v11

    move-object/from16 v18, v12

    goto :goto_a4

    .line 161
    :cond_9f
    :goto_9f
    new-array v11, v6, [I

    move-object v15, v11

    move-object/from16 v18, v15

    .line 172
    :goto_a4
    iget v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mType:I

    .line 173
    invoke-static {v9}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->typeToStatsType(I)I

    move-result v13

    .line 174
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToStatsReason(I)I

    move-result v14

    iget-wide v9, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    const/16 v12, 0x24c

    move-wide/from16 v16, v9

    .line 172
    invoke-static/range {v12 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[IJ[I)V

    .line 179
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_ed

    if-nez v7, :cond_d5

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->mElapsedMillis:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_d5
    invoke-static {v8}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v15}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ed
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_64

    .line 189
    :cond_f1
    const-string/jumbo v0, "wakeup_attribution"

    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_5d .. :try_end_ff} :catchall_36

    .line 191
    monitor-exit p0

    return-void

    :goto_101
    :try_start_101
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_36

    throw v0
.end method

.method public declared-synchronized noteUidProcessState(II)V
    .registers 4

    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 205
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized noteWakeupTimeAndReason(JJLjava/lang/String;)V
    .registers 12

    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mIrqDeviceMap:Lcom/android/server/power/stats/wakeups/IrqDeviceMap;

    move-wide v1, p1

    move-wide v3, p3

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;->parseWakeup(Ljava/lang/String;JJLcom/android/server/power/stats/wakeups/IrqDeviceMap;)Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2c

    if-nez p1, :cond_e

    .line 214
    monitor-exit p0

    return-void

    .line 216
    :cond_e
    :try_start_e
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionFor(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    .line 222
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    iget-wide p2, p2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 223
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    sub-long p2, v1, p2

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p4

    :goto_22
    if-ltz p4, :cond_2f

    .line 225
    iget-object p5, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p5, p4}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_22

    :catchall_2c
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 227
    :cond_2f
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    move-result p2

    :goto_35
    if-ltz p2, :cond_3f

    .line 229
    iget-object p3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mWakeupAttribution:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p2}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    .line 231
    :cond_3f
    iget-object p2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats;Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Wakeup;)V

    sget-wide p4, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->WAKEUP_WRITE_DELAY_MS:J

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_2c

    .line 232
    monitor-exit p0

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_2c

    throw p1
.end method

.method public varargs declared-synchronized noteWakingActivity(IJ[I)V
    .registers 10

    monitor-enter p0

    if-nez p4, :cond_5

    .line 237
    monitor-exit p0

    return-void

    .line 239
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    const/4 v0, 0x0

    .line 240
    :goto_b
    array-length v1, p4

    if-ge v0, v1, :cond_21

    .line 241
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    aget v2, p4, v0

    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    .line 242
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 241
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catchall_1f
    move-exception p1

    goto :goto_32

    .line 244
    :cond_21
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->attemptAttributionWith(IJLandroid/util/SparseIntArray;)Z

    move-result p4

    if-nez p4, :cond_30

    .line 245
    iget-object p4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mRecentWakingActivity:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;

    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mReusableUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->recordActivity(IJLandroid/util/SparseIntArray;)V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_1f

    .line 248
    :cond_30
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_1f

    throw p1
.end method

.method public declared-synchronized onUidRemoved(I)V
    .registers 3

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 198
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized systemServicesReady()V
    .registers 4

    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mConfig:Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->register(Ljava/util/concurrent/Executor;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 102
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method
