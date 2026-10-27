.class Lcom/android/server/am/CacheOomRanker$1;
.super Ljava/lang/Object;
.source "CacheOomRanker.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CacheOomRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CacheOomRanker;


# direct methods
.method constructor <init>(Lcom/android/server/am/CacheOomRanker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/CacheOomRanker;

    .line 121
    iput-object p1, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 124
    iget-object v0, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v0}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CacheOomRanker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 125
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "use_oom_re_ranking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 127
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUseOomReranking(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 128
    :cond_2a
    const-string/jumbo v3, "oom_re_ranking_number_to_re_rank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 129
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateNumberToReRank(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 130
    :cond_39
    const-string/jumbo v3, "oom_re_ranking_preserve_top_n_apps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 131
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdatePreserveTopNApps(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 132
    :cond_48
    const-string/jumbo v3, "oom_re_ranking_rss_use_frequent_rss"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 133
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUseFrequentRss(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 134
    :cond_57
    const-string/jumbo v3, "oom_re_ranking_rss_update_rate_ms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 135
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateRssUpdateRateMs(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 136
    :cond_66
    const-string/jumbo v3, "oom_re_ranking_lru_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 137
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateLruWeight(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 138
    :cond_75
    const-string/jumbo v3, "oom_re_ranking_uses_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 139
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateUsesWeight(Lcom/android/server/am/CacheOomRanker;)V

    goto :goto_92

    .line 140
    :cond_84
    const-string/jumbo v3, "oom_re_ranking_rss_weight"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 141
    iget-object v3, p0, Lcom/android/server/am/CacheOomRanker$1;->this$0:Lcom/android/server/am/CacheOomRanker;

    invoke-static {v3}, Lcom/android/server/am/CacheOomRanker;->-$$Nest$mupdateRssWeight(Lcom/android/server/am/CacheOomRanker;)V

    .line 143
    .end local v2    # "name":Ljava/lang/String;
    :cond_92
    :goto_92
    goto/16 :goto_f

    .line 144
    :cond_94
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_7 .. :try_end_98} :catchall_96

    throw v1
.end method
