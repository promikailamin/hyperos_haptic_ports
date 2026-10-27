.class public Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public mAmbientLux:F

.field public mBrightness:F

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayState:I

.field public final mHandler:Landroid/os/Handler;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighDisplayBrightnessThresholds:[F

.field public mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

.field public mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field public mLightSensorName:Ljava/lang/String;

.field public mLightSensorType:Ljava/lang/String;

.field public mLoggingEnabled:Z

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowDisplayBrightnessThresholds:[F

.field public mLowPowerModeEnabled:Z

.field public mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mPeakRefreshRate:I

.field public mRefreshRateChangeable:Z

.field public mRefreshRateInHighZone:I

.field public mRefreshRateInLowZone:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldObserveAmbientHighChange:Z

.field public mShouldObserveAmbientLowChange:Z

.field public mShouldObserveDisplayHighChange:Z

.field public mShouldObserveDisplayLowChange:Z

.field public final mThermalListener:Landroid/os/IThermalEventListener$Stub;

.field public mThermalRegistered:Z

.field public mThermalStatus:I

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$8DAn56bU6WgFgsFx-a9p7-LZAcI(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 1939
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ay2prysMHDYMO6gnyiTQlctgcyI(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadLowBrightnessThresholds$2()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ErR8h1ciNprVwDnWLJTnyyvJFow(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2199
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IKnEMBFyGRQBJ1PKPV09LlnUYcQ(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadLowBrightnessThresholds$0()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NoY5RPLd_tMQ9arcQdNvKQupLRA(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QQJ_8KNK1PlQxWszYy-c-kL2A3U(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qap_vgSsSIpOoM7GLXh-0nck6zU(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2159
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R05hOuFMoShOgMWSJv7wolTW2T0(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2153
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TN6bCtO3Mq3QS43W5huCcmcyJ1w(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigHighBrightnessThresholdsChanged$14()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TOfl-cGYXuStF3el4JR8AneQz-w(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aoh3sBmq2C7SevGL6MwSMwgHrls(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigLowBrightnessThresholdsChanged$10()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eSIxrilA5_Gi_Xv6-SCnYK1kGRg(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigHighBrightnessThresholdsChanged$12()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$horxynV7MmybweJstKDz3KJXC50(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .registers 1

    .line 2005
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q9lF_A0quq49fCqX-dNNPJaLYQ8(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadHighBrightnessThresholds$4()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uJDIpoE3-0BsPhq2MxsFE6C-7l4(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigLowBrightnessThresholdsChanged$8()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ukYjuV9AUGT_8BbrisQUwkGAqfM(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadHighBrightnessThresholds$6()[F

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadIdleScreenRefreshRateConfigs(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mobserve(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Landroid/hardware/SensorManager;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceConfigHighBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigHighBrightnessThresholdsChanged([F[F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceConfigLowBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigLowBrightnessThresholdsChanged([F[F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->reloadLightSensor(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFlickerRefreshRateVotes(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateIdleScreenRefreshRate(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateIdleScreenRefreshRate(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 6

    .line 1847
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1788
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 p5, 0x0

    invoke-direct {p1, p0, p5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 1791
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1801
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 1807
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    const/4 p1, 0x0

    .line 1826
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 1827
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1828
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1843
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 1848
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1849
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 1850
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 1851
    invoke-virtual {p0, p5, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1853
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00b9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 1855
    invoke-virtual {p0, p5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 2234
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateChangeable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInLowZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_ba
    if-ge v3, v1, :cond_d5

    aget v4, v0, v3

    .line 2245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    .line 2248
    :cond_d5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    array-length v1, v0

    move v3, v2

    :goto_d9
    if-ge v3, v1, :cond_f4

    aget v4, v0, v3

    .line 2249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mAmbientLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d9

    .line 2252
    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInHighZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length v1, v0

    move v3, v2

    :goto_13a
    if-ge v3, v1, :cond_155

    aget v4, v0, v3

    .line 2257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayHighBrightnessThresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13a

    .line 2260
    :cond_155
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    array-length v1, v0

    :goto_158
    if-ge v2, v1, :cond_173

    aget v3, v0, v2

    .line 2261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientHighBrightnessThresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_158

    .line 2264
    :cond_173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRegisteredLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2268
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2270
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    if-eqz v0, :cond_1e0

    .line 2271
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2272
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    :cond_1e0
    return-void
.end method

.method public final getBrightness(I)F
    .registers 2

    .line 2630
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2632
    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    return p0

    :cond_b
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .registers 1

    .line 1901
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .registers 1

    .line 1896
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    .registers 1

    .line 1923
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    return-object p0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoints()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;",
            ">;"
        }
    .end annotation

    .line 1930
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    return-object p0
.end method

.method public final getLightSensor()Landroid/hardware/Sensor;
    .registers 4

    .line 2371
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .registers 1

    .line 1891
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .registers 1

    .line 1886
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getRefreshRateInHighZone()I
    .registers 1

    .line 1909
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return p0
.end method

.method public getRefreshRateInLowZone()I
    .registers 1

    .line 1917
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return p0
.end method

.method public final hasLowLightVrrConfig()Z
    .registers 2

    .line 2301
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2302
    :try_start_7
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    .line 2303
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_26

    if-eqz p0, :cond_24

    .line 2305
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0

    :catchall_26
    move-exception p0

    .line 2303
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final hasValidHighZone()Z
    .registers 2

    .line 2523
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    if-nez v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final hasValidLowZone()Z
    .registers 2

    .line 2518
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-gtz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    if-nez v0, :cond_15

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final hasValidThreshold([F)Z
    .registers 6

    .line 2380
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_11

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method public final isDeviceActive()Z
    .registers 2

    .line 2621
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final isIdleScreenRefreshRateConfigDefined()Z
    .registers 1

    .line 2590
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    if-eqz p0, :cond_c

    .line 2591
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isInsideHighZone(FF)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 2429
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length v3, v2

    if-ge v1, v3, :cond_33

    .line 2430
    aget v2, v2, v1

    .line 2431
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-ltz v5, :cond_20

    cmpl-float v7, v3, v4

    if-ltz v7, :cond_20

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_30

    cmpl-float v2, p2, v3

    if-ltz v2, :cond_30

    return v6

    :cond_20
    if-ltz v5, :cond_27

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_30

    return v6

    :cond_27
    cmpl-float v2, v3, v4

    if-ltz v2, :cond_30

    cmpl-float v2, p2, v3

    if-ltz v2, :cond_30

    return v6

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    return v0
.end method

.method public final isInsideLowZone(FF)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 2398
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length v3, v2

    if-ge v1, v3, :cond_33

    .line 2399
    aget v2, v2, v1

    .line 2400
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-ltz v5, :cond_20

    cmpl-float v7, v3, v4

    if-ltz v7, :cond_20

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_30

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_30

    return v6

    :cond_20
    if-ltz v5, :cond_27

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_30

    return v6

    :cond_27
    cmpl-float v2, v3, v4

    if-ltz v2, :cond_30

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_30

    return v6

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_33
    return v0
.end method

.method public final synthetic lambda$loadHighBrightnessThresholds$4()[F
    .registers 1

    .line 2004
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadHighBrightnessThresholds$6()[F
    .registers 1

    .line 2010
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadLowBrightnessThresholds$0()[F
    .registers 1

    .line 1938
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadLowBrightnessThresholds$2()[F
    .registers 1

    .line 1944
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigHighBrightnessThresholdsChanged$12()[F
    .registers 1

    .line 2198
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigHighBrightnessThresholdsChanged$14()[F
    .registers 1

    .line 2204
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigLowBrightnessThresholdsChanged$10()[F
    .registers 1

    .line 2158
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigLowBrightnessThresholdsChanged$8()[F
    .registers 1

    .line 2152
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F
    .registers 7

    if-eqz p5, :cond_9

    .line 2036
    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    :cond_9
    const/4 p1, 0x0

    :goto_a
    if-nez p1, :cond_33

    if-nez p4, :cond_22

    .line 2043
    :try_start_e
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 2044
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 2043
    invoke-interface {p6, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    :goto_1e
    move-object p1, p0

    goto :goto_33

    :catch_20
    move-exception p0

    goto :goto_29

    .line 2046
    :cond_22
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_20

    goto :goto_1e

    .line 2048
    :goto_29
    const-string p2, "DisplayModeDirector"

    const-string p3, "Unexpectedly failed to load display brightness threshold"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return-object p1
.end method

.method public final loadHighBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 10

    .line 2003
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070095

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2009
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda13;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070094

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2015
    iget-object p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length p1, p1

    array-length p0, p0

    if-ne p1, p0, :cond_3a

    return-void

    .line 2017
    :cond_3a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2020
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ambientBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2022
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 4

    .line 1859
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1e

    .line 1861
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1e

    .line 1870
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    .line 1871
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_25

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    .line 1864
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 1865
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    .line 1866
    monitor-exit v0

    return-void

    .line 1871
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_1c

    throw p0
.end method

.method public final loadLowBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 10

    .line 1935
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1936
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1937
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070032

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 1943
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda9;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070016

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 1949
    iget-object p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length p1, p1

    array-length p0, p0

    if-ne p1, p0, :cond_40

    return-void

    .line 1950
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 1953
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ambientBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 1955
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 4

    const/4 v0, -0x1

    if-eqz p2, :cond_e

    .line 1985
    :try_start_3
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    :cond_e
    move p2, v0

    :goto_f
    if-ne p2, v0, :cond_25

    if-nez p1, :cond_21

    .line 1992
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_25

    .line 1994
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultHighBlockingZoneRefreshRate()I

    move-result p2

    :cond_25
    :goto_25
    if-nez p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2d

    .line 1997
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBlockingZoneThermalMap()Landroid/util/SparseArray;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 1998
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return-void
.end method

.method public final loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 4

    const/4 v0, -0x1

    if-eqz p2, :cond_e

    .line 1964
    :try_start_3
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    :cond_e
    move p2, v0

    :goto_f
    if-ne p2, v0, :cond_25

    if-nez p1, :cond_21

    .line 1971
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0082

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_25

    .line 1973
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultLowBlockingZoneRefreshRate()I

    move-result p2

    :cond_25
    :goto_25
    if-nez p1, :cond_29

    const/4 p1, 0x0

    goto :goto_2d

    .line 1976
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getLowBlockingZoneThermalMap()Landroid/util/SparseArray;

    move-result-object p1

    :goto_2d
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 1977
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return-void
.end method

.method public final observe(Landroid/hardware/SensorManager;)V
    .registers 5

    .line 2056
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p1, 0x0

    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getBrightness(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 2060
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 2061
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 2062
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 2063
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object v0

    if-eqz p1, :cond_29

    if-eqz v0, :cond_29

    .line 2064
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_29

    .line 2067
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2068
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2071
    :cond_29
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 2072
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 2073
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 2074
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object v0

    if-eqz p1, :cond_49

    if-eqz v0, :cond_49

    .line 2075
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_49

    .line 2078
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2079
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2082
    :cond_49
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_58

    .line 2084
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2087
    :cond_58
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result p1

    if-eq p1, v0, :cond_66

    .line 2089
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2092
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 2093
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->registerDisplayListener()V

    return-void
.end method

.method public final onDeviceConfigHighBrightnessThresholdsChanged([F[F)V
    .registers 10

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 2188
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_e

    .line 2190
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2191
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    move-object v0, p0

    goto :goto_4e

    .line 2194
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2195
    :try_start_15
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    .line 2196
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_52

    .line 2197
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070095

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2203
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda4;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070094

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2210
    :goto_4e
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_52
    move-exception v0

    move-object p0, v0

    .line 2196
    :try_start_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_52

    throw p0
.end method

.method public final onDeviceConfigLowBrightnessThresholdsChanged([F[F)V
    .registers 10

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    .line 2142
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_e

    .line 2144
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2145
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    move-object v0, p0

    goto :goto_4e

    .line 2148
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2149
    :try_start_15
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    .line 2150
    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_52

    .line 2151
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda15;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070032

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2157
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda17;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070016

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2164
    :goto_4e
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_52
    move-exception v0

    move-object p0, v0

    .line 2150
    :try_start_54
    monitor-exit p1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_52

    throw p0
.end method

.method public onDeviceConfigRefreshRateInHighZoneChanged(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1c

    .line 2221
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2222
    :try_start_a
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 2224
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_19
    move-exception p0

    .line 2224
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0

    .line 2226
    :cond_1c
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-eq p1, v0, :cond_25

    .line 2227
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2228
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_25
    return-void
.end method

.method public onDeviceConfigRefreshRateInLowZoneChanged(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1c

    .line 2175
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2176
    :try_start_a
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 2178
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_19

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_19
    move-exception p0

    .line 2178
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0

    .line 2180
    :cond_1c
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-eq p1, v0, :cond_25

    .line 2181
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_25
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    if-nez p1, :cond_24

    .line 2285
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateDefaultDisplayState()V

    .line 2289
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getBrightness(I)F

    move-result p1

    .line 2290
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2291
    :try_start_10
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2292
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 2293
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 2295
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_1e

    throw p0

    :cond_24
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .registers 3

    .line 2133
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_c

    .line 2134
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 2135
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    :cond_c
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .registers 5

    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2115
    :goto_11
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2116
    iget-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-ne p2, v0, :cond_23

    iget p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mPeakRefreshRate:I

    if-eq p2, p1, :cond_22

    goto :goto_23

    :cond_22
    return-void

    .line 2117
    :cond_23
    :goto_23
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 2118
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mPeakRefreshRate:I

    if-eqz v0, :cond_38

    .line 2120
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2121
    :try_start_30
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    .line 2122
    monitor-exit p1

    return-void

    :catchall_35
    move-exception p0

    monitor-exit p1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw p0

    .line 2124
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    return-void
.end method

.method public final registerDisplayListener()V
    .registers 5

    .line 2098
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x24

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public final registerLightSensor()V
    .registers 6

    .line 2595
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_7

    goto :goto_2a

    :cond_7
    if-eqz v0, :cond_c

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    .line 2603
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2605
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 2606
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_2a

    .line 2607
    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: registerListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final reloadLightSensor(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2

    .line 2350
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->reloadLightSensorData(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public final reloadLightSensorData(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 3

    if-eqz p1, :cond_19

    .line 2358
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2360
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 2361
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    return-void

    .line 2362
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    if-nez p1, :cond_34

    .line 2363
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104028b

    .line 2364
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 2366
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    :cond_34
    return-void
.end method

.method public final restartObserver()V
    .registers 4

    .line 2310
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_11

    .line 2316
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2317
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    goto :goto_21

    .line 2311
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2313
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 2320
    :goto_21
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_36

    .line 2321
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2323
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    goto :goto_3a

    .line 2326
    :cond_36
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2327
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 2330
    :goto_3a
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->shouldRegisterLightSensor()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2331
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getLightSensor()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 2333
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_60

    .line 2334
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2335
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2336
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    goto :goto_60

    :cond_5b
    const/4 v0, 0x0

    .line 2339
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2340
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 2343
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2344
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2345
    :try_start_6a
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateFlickerRefreshRateVotes()V

    .line 2346
    monitor-exit v0

    return-void

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public setDefaultDisplayState(I)V
    .registers 4

    .line 2538
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_25

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :cond_25
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    if-eq v0, p1, :cond_2e

    .line 2544
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 2545
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_2e
    return-void
.end method

.method public final setLoggingEnabled(Z)V
    .registers 3

    .line 2104
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2107
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 2108
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->setLoggingEnabled(Z)V

    return-void
.end method

.method public final shouldRegisterLightSensor()Z
    .registers 2

    .line 2585
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-nez v0, :cond_11

    .line 2586
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isIdleScreenRefreshRateConfigDefined()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public final unregisterSensorListener()V
    .registers 3

    .line 2612
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 2613
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 2614
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 2615
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_1b

    .line 2616
    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: unregisterListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 3

    .line 1880
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadLowBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1881
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadHighBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    return-void
.end method

.method public final updateDefaultDisplayState()V
    .registers 3

    .line 2528
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 2533
    :cond_a
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    return-void
.end method

.method public final updateFlickerRefreshRateVotes()V
    .registers 9

    .line 2453
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e0

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eqz v0, :cond_e

    goto/16 :goto_e0

    .line 2462
    :cond_e
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 2468
    :cond_17
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mPeakRefreshRate:I

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2469
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidLowZone()Z

    move-result v4

    if-eqz v4, :cond_68

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p0, v4, v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isInsideLowZone(FF)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2472
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 2473
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 2472
    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    :goto_45
    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_53

    :cond_49
    int-to-float v0, v0

    .line 2475
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2477
    invoke-static {}, Lcom/android/server/display/mode/Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;

    move-result-object v3

    goto :goto_45

    .line 2479
    :goto_53
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v4, :cond_69

    .line 2480
    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2481
    invoke-static {v5, v4}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 2484
    iget v3, v4, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2485
    invoke-static {v3, v4}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v3

    goto :goto_69

    :cond_68
    move-object v0, v3

    .line 2490
    :cond_69
    :goto_69
    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mPeakRefreshRate:I

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2491
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidHighZone()Z

    move-result v5

    if-eqz v5, :cond_9f

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    iget v6, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2492
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isInsideHighZone(FF)Z

    move-result v5

    if-eqz v5, :cond_9f

    int-to-float v0, v4

    .line 2495
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2496
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v3, :cond_9a

    .line 2497
    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2498
    invoke-static {v4, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v3

    if-eqz v3, :cond_9a

    .line 2501
    iget v0, v3, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v3, v3, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2502
    invoke-static {v0, v3}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    :cond_9a
    move-object v3, v0

    .line 2505
    invoke-static {}, Lcom/android/server/display/mode/Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2508
    :cond_9f
    iget-boolean v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v4, :cond_cd

    .line 2509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display brightness "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", ambient lux "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Vote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayModeDirector"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :cond_cd
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 2513
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    return-void

    .line 2455
    :cond_e0
    :goto_e0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 2456
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final updateIdleScreenRefreshRate(F)V
    .registers 6

    .line 2757
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 2758
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_56

    .line 2765
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 2766
    invoke-virtual {v2}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_12

    .line 2768
    invoke-virtual {v2}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_12

    .line 2771
    :cond_34
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-eqz p1, :cond_3e

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-eq v1, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    return-void

    .line 2773
    :cond_3e
    :goto_3e
    new-instance p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct {p1, v1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2775
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2776
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 2777
    monitor-exit p1

    return-void

    :catchall_53
    move-exception p0

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    :goto_56
    const/4 p1, 0x0

    .line 2759
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    return-void
.end method

.method public final updateSensorStatus()V
    .registers 4

    .line 2550
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_a

    goto/16 :goto_a8

    .line 2554
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_54

    .line 2555
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldObserveAmbientHighChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRefreshRateChangeable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->shouldRegisterLightSensor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isDeviceActive()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v0, :cond_76

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_76

    .line 2566
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->registerLightSensor()V

    .line 2567
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-nez v0, :cond_74

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v0, :cond_79

    :cond_74
    const/4 v0, 0x1

    goto :goto_7a

    .line 2570
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    :cond_79
    move v0, v1

    :goto_7a
    if-eqz v0, :cond_8b

    .line 2573
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    if-nez v2, :cond_8b

    .line 2574
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    return-void

    :cond_8b
    if-nez v0, :cond_a8

    .line 2575
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    if-eqz v0, :cond_a8

    .line 2576
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    invoke-interface {v0, v2}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->unregisterThermalServiceListener(Landroid/os/IThermalEventListener;)V

    .line 2577
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 2578
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2579
    :try_start_a1
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2580
    monitor-exit v0

    return-void

    :catchall_a5
    move-exception p0

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_a5

    throw p0

    :cond_a8
    :goto_a8
    return-void
.end method
