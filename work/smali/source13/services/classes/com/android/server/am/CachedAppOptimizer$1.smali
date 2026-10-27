.class Lcom/android/server/am/CachedAppOptimizer$1;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 228
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 231
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "use_compaction"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    const-string v3, "compaction_priority"

    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    const-string v3, "debug_compaction"

    .line 235
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto/16 :goto_e7

    .line 237
    :cond_36
    const-string v3, "compact_action_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    const-string v3, "compact_action_2"

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    goto/16 :goto_e1

    .line 240
    :cond_48
    const-string v3, "compact_throttle_1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "compact_throttle_2"

    .line 241
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "compact_throttle_3"

    .line 242
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "compact_throttle_4"

    .line 243
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "compact_throttle_5"

    .line 244
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "compact_throttle_6"

    .line 245
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    goto :goto_db

    .line 247
    :cond_79
    const-string v3, "compact_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 248
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 249
    :cond_87
    const-string v3, "freeze_statsd_sample_rate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 250
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFreezerStatsdSampleRate(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 251
    :cond_95
    const-string v3, "compact_full_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 252
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFullRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 253
    :cond_a3
    const-string v3, "compact_full_delta_rss_throttle_kb"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 254
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFullDeltaRssThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 255
    :cond_b1
    const-string v3, "compact_proc_state_throttle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 256
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateProcStateThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 257
    :cond_bf
    const-string v3, "compact_throttle_min_oom_adj"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 258
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateMinOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 259
    :cond_cd
    const-string v3, "compact_throttle_max_oom_adj"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 260
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateMaxOomAdjThrottle(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 246
    :cond_db
    :goto_db
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactionThrottles(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 239
    :cond_e1
    :goto_e1
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateCompactionActions(Lcom/android/server/am/CachedAppOptimizer;)V

    goto :goto_ec

    .line 236
    :cond_e7
    :goto_e7
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateUseCompaction(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 262
    .end local v2    # "name":Ljava/lang/String;
    :cond_ec
    :goto_ec
    goto/16 :goto_f

    .line 263
    :cond_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_7 .. :try_end_ef} :catchall_101

    .line 264
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_100

    .line 265
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$1;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 267
    :cond_100
    return-void

    .line 263
    :catchall_101
    move-exception v1

    :try_start_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v1
.end method
