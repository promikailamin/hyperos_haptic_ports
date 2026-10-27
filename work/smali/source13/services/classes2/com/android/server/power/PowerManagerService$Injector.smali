.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 988
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createAmbientDisplaySuppressionController(Landroid/content/Context;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 993
    new-instance v0, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {v0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1034
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .registers 12
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverPolicy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .param p4, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 969
    new-instance v6, Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object v6
.end method

.method createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 963
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object v0
.end method

.method createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverController"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 975
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-object v0
.end method

.method createClock()Lcom/android/server/power/PowerManagerService$Clock;
    .registers 2

    .line 1015
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .line 1022
    new-instance v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object v0
.end method

.method createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;
    .registers 2

    .line 997
    new-instance v0, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {v0}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    return-object v0
.end method

.method createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1030
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController;

    new-instance v1, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;)V

    return-object v0
.end method

.method createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .registers 2

    .line 979
    new-instance v0, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    return-object v0
.end method

.method createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)Lcom/android/server/power/Notifier;
    .registers 19
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p6, "faceDownDetector"    # Lcom/android/server/power/FaceDownDetector;
    .param p7, "screenUndimDetector"    # Lcom/android/server/power/ScreenUndimDetector;
    .param p8, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 950
    new-instance v9, Lcom/android/server/power/Notifier;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method

.method createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 5
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 956
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 957
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    return-object v0
.end method

.method public createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;
    .registers 2

    .line 1001
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .registers 5
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 984
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object v0
.end method

.method invalidateIsInteractiveCaches()V
    .registers 1

    .line 1026
    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    .line 1027
    return-void
.end method
