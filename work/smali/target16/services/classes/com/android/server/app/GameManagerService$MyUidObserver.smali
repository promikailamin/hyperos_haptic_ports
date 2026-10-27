.class public final Lcom/android/server/app/GameManagerService$MyUidObserver;
.super Landroid/app/UidObserver;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public static synthetic $r8$lambda$mE-7E21f94kUEAgfV42TQXpejok(Lcom/android/server/app/GameManagerService$MyUidObserver;ILjava/lang/String;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/app/GameManagerService$MyUidObserver;->lambda$handleUidMovedToTop$0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 2

    .line 2299
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleUidMovedOffTop(I)V
    .registers 6

    .line 2350
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2351
    :try_start_7
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xf

    if-eqz v1, :cond_52

    .line 2352
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2353
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 2354
    const-string p1, "GameManagerService"

    const-string v1, "Game power mode OFF (no games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_98

    :catchall_50
    move-exception p0

    goto :goto_9a

    .line 2357
    :cond_52
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2358
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2359
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_98

    .line 2360
    const-string p1, "GameManagerService"

    const-string v1, "Game power mode ON (only games in foreground)"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 2364
    :cond_98
    :goto_98
    monitor-exit v0

    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_7 .. :try_end_9b} :catchall_50

    throw p0
.end method

.method public final handleUidMovedToTop(I)V
    .registers 8

    .line 2319
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 2320
    array-length v1, v0

    if-nez v1, :cond_11

    goto/16 :goto_b8

    .line 2324
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2325
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/app/GameManagerService$MyUidObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/app/GameManagerService$MyUidObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameManagerService$MyUidObserver;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 2327
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-eqz v0, :cond_68

    .line 2329
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2330
    const-string v0, "GameManagerService"

    const-string v4, "Game power mode OFF (first non-game in foreground)"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto :goto_59

    :catchall_57
    move-exception p0

    goto :goto_b6

    .line 2333
    :cond_59
    :goto_59
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2334
    monitor-exit v1

    return-void

    .line 2336
    :cond_68
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmNonGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2337
    const-string v0, "GameManagerService"

    const-string v5, "Game power mode ON (first game in foreground)"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 2340
    :cond_91
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSysProps(Lcom/android/server/app/GameManagerService;)Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;

    move-result-object v0

    const-string v3, "debug.graphics.game_default_frame_rate.disabled"

    .line 2341
    invoke-interface {v0, v3, v2}, Lcom/android/server/app/GameManagerServiceSystemPropertiesWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2343
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    xor-int/2addr v0, v4

    .line 2344
    invoke-static {v2, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetGameDefaultFrameRate(Lcom/android/server/app/GameManagerService;Z)F

    move-result v0

    .line 2343
    invoke-virtual {v2, p1, v0}, Lcom/android/server/app/GameManagerService;->setGameDefaultFrameRateOverride(IF)V

    .line 2345
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameForegroundUids(Lcom/android/server/app/GameManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2346
    monitor-exit v1

    return-void

    :goto_b6
    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_2e .. :try_end_b7} :catchall_57

    throw p0

    :cond_b8
    :goto_b8
    return-void
.end method

.method public final synthetic lambda$handleUidMovedToTop$0(ILjava/lang/String;)Z
    .registers 3

    .line 2326
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$misPackageGame(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onUidGone(IZ)V
    .registers 3

    .line 2302
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$MyUidObserver;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmUidObserverLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2303
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    .line 2304
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_7

    .line 2314
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedOffTop(I)V

    return-void

    .line 2311
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$MyUidObserver;->handleUidMovedToTop(I)V

    return-void
.end method
