.class Lcom/android/server/power/WakefulnessSessionObserver$Injector;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/server/power/WakefulnessSessionObserver$Clock;
    .registers 1

    .line 858
    new-instance p0, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .registers 1

    .line 866
    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 862
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getWakefulnessSessionFrameworkStatsLogger()Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;
    .registers 1

    .line 854
    new-instance p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-direct {p0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;-><init>()V

    return-object p0
.end method
