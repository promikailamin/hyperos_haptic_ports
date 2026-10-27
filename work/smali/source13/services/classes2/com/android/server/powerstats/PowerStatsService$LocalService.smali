.class final Lcom/android/server/powerstats/PowerStatsService$LocalService;
.super Landroid/power/PowerStatsInternal;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .registers 3

    .line 277
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/power/PowerStatsInternal;-><init>()V

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetLooper(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method static synthetic lambda$getEnergyConsumedAsync$0(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .param p0, "rec$"    # Lcom/android/server/powerstats/PowerStatsService;
    .param p1, "x$0"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "x$1"    # [I

    .line 292
    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetEnergyConsumedAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic lambda$getStateResidencyAsync$1(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .param p0, "rec$"    # Lcom/android/server/powerstats/PowerStatsService;
    .param p1, "x$0"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "x$1"    # [I

    .line 307
    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetStateResidencyAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static synthetic lambda$readEnergyMeterAsync$2(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .registers 3
    .param p0, "rec$"    # Lcom/android/server/powerstats/PowerStatsService;
    .param p1, "x$0"    # Ljava/util/concurrent/CompletableFuture;
    .param p2, "x$1"    # [I

    .line 322
    invoke-static {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mreadEnergyMeterAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method


# virtual methods
.method public getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "energyConsumerIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 291
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    .line 292
    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-object v0
.end method

.method public getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    return-object v0
.end method

.method public getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .registers 2

    .line 299
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    return-object v0
.end method

.method public getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "powerEntityIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/StateResidencyResult;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 306
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/StateResidencyResult;>;"
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    .line 307
    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-object v0
.end method

.method public readEnergyMeterAsync([I)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .param p1, "channelIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyMeasurement;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 321
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyMeasurement;>;"
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    .line 322
    invoke-static {v3, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 321
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    return-object v0
.end method
