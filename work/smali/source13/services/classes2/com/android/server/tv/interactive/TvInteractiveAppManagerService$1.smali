.class Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 316
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private buildTvInteractiveAppServiceList([Ljava/lang/String;)V
    .registers 6
    .param p1, "packages"    # [Ljava/lang/String;

    .line 318
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->getChangingUserId()I

    move-result v0

    .line 319
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 320
    :try_start_b
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmCurrentUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)I

    move-result v2

    if-eq v2, v0, :cond_23

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmRunningProfiles(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 321
    :cond_23
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v2, v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mbuildTvInteractiveAppServiceListLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I[Ljava/lang/String;)V

    .line 323
    :cond_28
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2a

    throw v2
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 342
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    .line 344
    :cond_9
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 3
    .param p1, "packages"    # [Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 355
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    .line 357
    :cond_9
    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 2

    .line 362
    invoke-virtual {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->isReplacing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    return-void

    .line 370
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;->buildTvInteractiveAppServiceList([Ljava/lang/String;)V

    .line 371
    return-void
.end method
