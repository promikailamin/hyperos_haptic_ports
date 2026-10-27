.class public final Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "CachedAppOptimizer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 461
    invoke-static {p1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmAm(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 466
    sget-object p1, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 467
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter p1

    .line 468
    :try_start_d
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mupdateUseFreezer(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 469
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    return-void
.end method
