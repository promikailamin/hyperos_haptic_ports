.class public final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;
.super Ljava/lang/Object;
.source "CpuWakeupStats.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field public static final DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

.field public static final DEFAULT_WAKEUP_STATS_RETENTION_MS:J

.field public static final DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

.field public static final PROPERTY_NAMES:[Ljava/lang/String;


# instance fields
.field public volatile WAKEUP_MATCHING_WINDOW_MS:J

.field public volatile WAKEUP_STATS_RETENTION_MS:J

.field public volatile WAKING_ACTIVITY_RETENTION_MS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 670
    const-string/jumbo v0, "wakeup_matching_window_ms"

    const-string/jumbo v1, "waking_activity_retention_ms"

    const-string/jumbo v2, "wakeup_stats_retention_ms"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    .line 676
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    .line 677
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    .line 678
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    .line 679
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    sget-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    iput-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    .line 685
    sget-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    iput-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    .line 686
    sget-wide v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    iput-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 721
    const-string v0, "Config:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 725
    const-string/jumbo v0, "wakeup_stats_retention_ms"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 726
    const-string v0, "="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 727
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 728
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 730
    const-string/jumbo v1, "wakeup_matching_window_ms"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 732
    iget-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 733
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 735
    const-string/jumbo v1, "waking_activity_retention_ms"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 737
    iget-wide v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 738
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 740
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 9

    .line 698
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_17

    goto :goto_8

    .line 702
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string/jumbo v3, "waking_activity_retention_ms"

    const-string/jumbo v4, "wakeup_stats_retention_ms"

    const-string/jumbo v5, "wakeup_matching_window_ms"

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_66

    goto :goto_46

    :sswitch_2c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_46

    :cond_33
    const/4 v6, 0x2

    goto :goto_46

    :sswitch_35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto :goto_46

    :cond_3c
    const/4 v6, 0x1

    goto :goto_46

    :sswitch_3e
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    :goto_46
    packed-switch v6, :pswitch_data_74

    goto :goto_8

    .line 712
    :pswitch_4a
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKING_ACTIVITY_RETENTION_MS:J

    invoke-virtual {p1, v3, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKING_ACTIVITY_RETENTION_MS:J

    goto :goto_8

    .line 704
    :pswitch_53
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_STATS_RETENTION_MS:J

    invoke-virtual {p1, v4, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_STATS_RETENTION_MS:J

    goto :goto_8

    .line 708
    :pswitch_5c
    sget-wide v1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->DEFAULT_WAKEUP_MATCHING_WINDOW_MS:J

    invoke-virtual {p1, v5, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->WAKEUP_MATCHING_WINDOW_MS:J

    goto :goto_8

    :cond_65
    return-void

    :sswitch_data_66
    .sparse-switch
        0xe683f93 -> :sswitch_3e
        0x231a1707 -> :sswitch_35
        0x3e8a6539 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
    .end packed-switch
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 690
    const-string v0, "battery_stats"

    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 692
    sget-object p1, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->PROPERTY_NAMES:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$Config;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
