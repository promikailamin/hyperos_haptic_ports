.class Lcom/android/server/vibrator/VibratorManagerService$Injector;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 1800
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 2

    .line 1774
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public createHapticFeedbackVibrationProvider(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;
    .registers 3

    .line 1796
    new-instance p0, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;-><init>(Landroid/content/res/Resources;Landroid/os/VibratorInfo;)V

    return-object p0
.end method

.method public createNativeHalVibratorManager()Lcom/android/server/vibrator/HalVibratorManager;
    .registers 2

    .line 1791
    new-instance p0, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;

    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeHalVibratorManager;-><init>(Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;)V

    return-object p0
.end method

.method public createVibratorControllerHolder()Lcom/android/server/vibrator/VibratorControllerHolder;
    .registers 1

    .line 1804
    new-instance p0, Lcom/android/server/vibrator/VibratorControllerHolder;

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorControllerHolder;-><init>()V

    return-object p0
.end method

.method public getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .registers 1

    .line 1778
    const-string p0, "batterystats"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkStatsLogger(Landroid/os/Handler;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .registers 2

    .line 1783
    new-instance p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;)V

    return-object p0
.end method

.method public isServiceDeclared(Ljava/lang/String;)Z
    .registers 2

    .line 1808
    invoke-static {p1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
