.class Lcom/android/server/vibrator/VibratorManagerService$Injector;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1195
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1196
    return-void
.end method

.method createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1181
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;
    .registers 4
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;

    .line 1191
    new-instance v0, Lcom/android/server/vibrator/VibratorController;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    return-object v0
.end method

.method getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .line 1185
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    return-object v0
.end method

.method getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .registers 2

    .line 1177
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;-><init>()V

    return-object v0
.end method
