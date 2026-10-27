.class public Lcom/android/server/power/Notifier$RealInjector;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Lcom/android/server/power/Notifier$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 2

    .line 1614
    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;
    .registers 1

    .line 1619
    const-class p0, Landroid/os/BatteryStatsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public getFrameworkStatsLogger()Lcom/android/server/power/FrameworkStatsLogger;
    .registers 1

    .line 1624
    new-instance p0, Lcom/android/server/power/FrameworkStatsLogger;

    invoke-direct {p0}, Lcom/android/server/power/FrameworkStatsLogger;-><init>()V

    return-object p0
.end method

.method public getWakeLockLog(Landroid/content/Context;)Lcom/android/server/power/WakeLockLog;
    .registers 2

    .line 1604
    new-instance p0, Lcom/android/server/power/WakeLockLog;

    invoke-direct {p0, p1}, Lcom/android/server/power/WakeLockLog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getWakelockTracer(Landroid/os/Looper;)Lcom/android/server/power/WakelockTracer;
    .registers 2

    .line 1609
    new-instance p0, Lcom/android/server/power/WakelockTracer;

    invoke-direct {p0, p1}, Lcom/android/server/power/WakelockTracer;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method
