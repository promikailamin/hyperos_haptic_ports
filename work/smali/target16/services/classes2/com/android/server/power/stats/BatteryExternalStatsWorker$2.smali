.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$2;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .registers 2

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 429
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
