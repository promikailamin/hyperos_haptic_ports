.class Lcom/android/server/display/DisplayPowerController$Injector;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 66

    .line 3414
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move-object/from16 v32, p32

    invoke-direct/range {v0 .. v32}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;)V

    return-object v0
.end method

.method public getBrightnessClamperController(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
    .registers 9

    .line 3474
    new-instance p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;Lcom/android/server/display/plugin/PluginManager;F)V

    return-object p0
.end method

.method public getBrightnessRangeController(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;)Lcom/android/server/display/BrightnessRangeController;
    .registers 4

    .line 3464
    new-instance p0, Lcom/android/server/display/BrightnessRangeController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-object p0
.end method

.method public getClock()Lcom/android/server/display/DisplayPowerController$Clock;
    .registers 1

    .line 3368
    new-instance p0, Lcom/android/server/display/DisplayPowerController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public getDefaultModeBrightnessMapper(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 4

    const/4 p0, 0x0

    .line 3429
    invoke-static {p1, p2, p0, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayPowerProximityStateController(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)Lcom/android/server/display/DisplayPowerProximityStateController;
    .registers 7

    .line 3391
    new-instance p0, Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/DisplayPowerProximityStateController;-><init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;)V

    return-object p0
.end method

.method public getDisplayPowerState(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)Lcom/android/server/display/DisplayPowerState;
    .registers 5

    .line 3373
    new-instance p0, Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;II)V

    return-object p0
.end method

.method public getDisplayWhiteBalanceController(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    .registers 4

    .line 3480
    invoke-static {p1, p2, p3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object p0

    return-object p0
.end method

.method public getDualRampAnimator(Lcom/android/server/display/DisplayPowerState;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)Lcom/android/server/display/RampAnimator$DualRampAnimator;
    .registers 4

    .line 3379
    new-instance p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V

    return-object p0
.end method

.method public getHighBrightnessModeController(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)Lcom/android/server/display/HighBrightnessModeController;
    .registers 13

    .line 3456
    new-instance p0, Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct/range {p0 .. p12}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    return-object p0
.end method

.method public getScreenOffBrightnessSensorController(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)Lcom/android/server/display/ScreenOffBrightnessSensorController;
    .registers 7

    .line 3440
    new-instance p0, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/ScreenOffBrightnessSensorController$Clock;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    return-object p0
.end method

.method public getWakelockController(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)Lcom/android/server/display/WakelockController;
    .registers 3

    .line 3384
    new-instance p0, Lcom/android/server/display/WakelockController;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WakelockController;-><init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    return-object p0
.end method

.method public isColorFadeEnabled()Z
    .registers 1

    .line 3485
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
