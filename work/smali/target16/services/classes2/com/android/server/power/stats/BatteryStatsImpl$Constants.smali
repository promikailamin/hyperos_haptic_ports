.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;
.source "BatteryStatsImpl.java"


# instance fields
.field public BATTERY_CHARGED_DELAY_MS:I

.field public BATTERY_CHARGING_ENFORCE_LEVEL:I

.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public MAX_HISTORY_BUFFER:I

.field public MAX_HISTORY_SIZE:I

.field public PER_UID_MODEM_MODEL:I

.field public PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

.field public PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public UID_REMOVE_DELAY_MS:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public mResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .registers 7

    .line 14625
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14626
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x1

    .line 14601
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    const-wide/32 v0, 0x493e0

    .line 14605
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    const-wide/32 v2, 0x927c0

    .line 14606
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 14608
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    const-wide/32 v0, 0xea60

    .line 14610
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    const v0, 0xdbba0

    .line 14614
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    const/16 v0, 0x5a

    .line 14615
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    const/4 v0, 0x2

    .line 14616
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 14617
    iput-boolean p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    const/16 p2, 0x2f

    .line 14619
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 14623
    new-instance p2, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p2, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    .line 14627
    # invokes: Landroid/os/BatteryStats;->isLowRamDevice()Z
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$000()Z

    move-result p2

    if-eqz p2, :cond_3f

    const/high16 p2, 0x10000

    .line 14628
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_43

    :cond_3f
    const/high16 p2, 0x20000

    .line 14630
    iput p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 14632
    :goto_43
    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->getMaxHistorySizeBytes()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5

    .line 14791
    const-string/jumbo v0, "track_cpu_active_cluster_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14792
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 14793
    const-string v1, "kernel_uid_readers_throttle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14794
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 14795
    const-string v1, "external_stats_collection_rate_limit_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14796
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 14797
    const-string v1, "battery_level_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14798
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 14799
    const-string/jumbo v1, "procstate_change_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14800
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 14801
    const-string/jumbo v1, "max_history_size"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14802
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 14803
    const-string/jumbo v1, "max_history_buffer_kb"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14804
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 14805
    const-string v1, "battery_charged_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14806
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 14807
    const-string v1, "battery_charging_enforce_level"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14808
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 14809
    const-string/jumbo v1, "per_uid_modem_power_model"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14810
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->getPerUidModemModelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14811
    const-string/jumbo v1, "phone_on_external_stats_collection"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14812
    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 14813
    const-string/jumbo v1, "reset_while_plugged_in_minimum_duration_hours"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14814
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getPerUidModemModel(Ljava/lang/String;)I
    .registers 4

    .line 14573
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo p0, "modem_activity_info_rx_tx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-nez p0, :cond_34

    const-string/jumbo p0, "mobile_radio_active_time"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    .line 14579
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected per uid modem model name ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryStatsImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method

.method public getPerUidModemModelName(I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_38

    const/4 p0, 0x2

    if-eq p1, p0, :cond_34

    .line 14565
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected per uid modem model ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryStatsImpl"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14563
    :cond_34
    const-string/jumbo p0, "modem_activity_info_rx_tx"

    return-object p0

    .line 14561
    :cond_38
    const-string/jumbo p0, "mobile_radio_active_time"

    return-object p0
.end method

.method public onChange()V
    .registers 3

    .line 14736
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmBatteryHistoryDirectory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryHistoryDirectory;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 14737
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmBatteryHistoryDirectory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryHistoryDirectory;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->setMaxHistorySize(I)V

    .line 14739
    :cond_13
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmHistory(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsHistory;->setMaxHistoryBufferSize(I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 14651
    const-string p1, "battery_charging_state_update_delay"

    .line 14652
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 14651
    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 14654
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 14655
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 14656
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw p0

    .line 14658
    :cond_17
    const-string p1, "battery_charging_state_enforce_level"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 14660
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 14661
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    .line 14662
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2b

    throw p0

    .line 14665
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    return-void
.end method

.method public startObserving(Landroid/content/ContentResolver;)V
    .registers 4

    .line 14636
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 14637
    const-string v0, "battery_stats_constants"

    .line 14638
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 14637
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14640
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "battery_charging_state_update_delay"

    .line 14641
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14640
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14643
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "battery_charging_state_enforce_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 14646
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateConstants()V

    return-void
.end method

.method public final updateBatteryChargedDelayMsLocked()V
    .registers 5

    .line 14744
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_17

    .line 14748
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "battery_charged_delay_ms"

    const v2, 0xdbba0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_17
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    .line 14752
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 14753
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14754
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/server/power/stats/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v0

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    return-void
.end method

.method public final updateBatteryChargingEnforceLevelLocked()V
    .registers 5

    .line 14759
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    .line 14760
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_charging_state_enforce_level"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_e

    goto :goto_18

    .line 14764
    :cond_e
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_charging_enforce_level"

    const/16 v3, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_18
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_CHARGING_ENFORCE_LEVEL:I

    .line 14767
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastChargeStepLevel:I

    if-gt v1, v2, :cond_26

    if-ge v2, v0, :cond_26

    const/4 v0, 0x1

    .line 14769
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->setChargingLocked(Z)Z

    :cond_26
    return-void
.end method

.method public final updateConstants()V
    .registers 9

    .line 14669
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 14671
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_14
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception p0

    goto/16 :goto_dd

    :catch_14
    move-exception v1

    .line 14676
    :try_start_15
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14679
    :goto_1c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    .line 14681
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "kernel_uid_readers_throttle_time"

    const-wide/16 v6, 0x3e8

    .line 14682
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 14681
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    .line 14684
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    const-wide/32 v4, 0x493e0

    .line 14685
    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 14684
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    .line 14686
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v1, v2, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    .line 14689
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    .line 14692
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "procstate_change_collection_delay_ms"

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    .line 14695
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_buffer_kb"

    .line 14696
    # invokes: Landroid/os/BatteryStats;->isLowRamDevice()Z
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->access$100()Z

    move-result v4

    if-eqz v4, :cond_79

    const/16 v4, 0x40

    goto :goto_7b

    :cond_79
    const/16 v4, 0x80

    .line 14695
    :goto_7b
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    .line 14699
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_size"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_9d

    .line 14702
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "max_history_files"

    invoke-virtual {v2, v5, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_9d

    .line 14704
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    mul-int/2addr v1, v2

    :cond_9d
    if-ne v1, v4, :cond_a7

    .line 14708
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->getMaxHistorySizeBytes()I

    move-result v1

    .line 14710
    :cond_a7
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->MAX_HISTORY_SIZE:I

    .line 14712
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "per_uid_modem_power_model"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14714
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->getPerUidModemModel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PER_UID_MODEM_MODEL:I

    .line 14716
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "phone_on_external_stats_collection"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->PHONE_ON_EXTERNAL_STATS_COLLECTION:Z

    .line 14720
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "reset_while_plugged_in_minimum_duration_hours"

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->RESET_WHILE_PLUGGED_IN_MINIMUM_DURATION_HOURS:I

    .line 14724
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    .line 14725
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->updateBatteryChargingEnforceLevelLocked()V

    .line 14727
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->onChange()V

    .line 14728
    monitor-exit v0

    return-void

    :goto_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_15 .. :try_end_de} :catchall_11

    throw p0
.end method

.method public final updateKernelUidReadersThrottleTime(JJ)V
    .registers 5

    .line 14774
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    cmp-long p1, p1, p3

    if-eqz p1, :cond_28

    .line 14776
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    invoke-virtual {p1, p3, p4}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    .line 14777
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    .line 14778
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    .line 14779
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p1, p1, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    .line 14780
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    :cond_28
    return-void
.end method

.method public final updateUidRemoveDelay(J)V
    .registers 3

    .line 14786
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    .line 14787
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Constants;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    return-void
.end method
