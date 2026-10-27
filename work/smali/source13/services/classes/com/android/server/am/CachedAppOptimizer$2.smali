.class Lcom/android/server/am/CachedAppOptimizer$2;
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

    .line 271
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$2;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 274
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$2;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPhenotypeFlagLock(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 275
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    .local v2, "name":Ljava/lang/String;
    const-string v3, "freeze_debounce_timeout"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 277
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$2;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateFreezerDebounceTimeout(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 279
    .end local v2    # "name":Ljava/lang/String;
    :cond_28
    goto :goto_f

    .line 280
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_3c

    .line 281
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$2;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 282
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$2;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmTestCallback(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;->onPropertyChanged()V

    .line 284
    :cond_3b
    return-void

    .line 280
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method
