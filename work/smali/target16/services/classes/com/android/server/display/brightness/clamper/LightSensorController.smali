.class public Lcom/android/server/display/brightness/clamper/LightSensorController;
.super Ljava/lang/Object;
.source "LightSensorController.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field public final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field public final mLightSensorRate:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public final mRegistrationHandler:Landroid/os/Handler;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$PL5DEy049WerjG5BM4EIL8eNFkk(Lcom/android/server/display/brightness/clamper/LightSensorController;Landroid/hardware/Sensor;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/LightSensorController;->lambda$restart$0(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzlX_OCnD-sUbK7iBX6gXppmvbQ(Lcom/android/server/display/brightness/clamper/LightSensorController;Landroid/hardware/Sensor;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/LightSensorController;->lambda$stop$1(Landroid/hardware/Sensor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorListener(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredLightSensor(Lcom/android/server/display/brightness/clamper/LightSensorController;)Landroid/hardware/Sensor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "LightSensorController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)V
    .registers 12

    .line 85
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-direct {v6}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V
    .registers 8

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 64
    new-instance v0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/LightSensorController$1;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 93
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    invoke-virtual {p6, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensorRate(Landroid/content/res/Resources;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    .line 95
    invoke-virtual {p6, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 96
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    .line 97
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mUpdateHandler:Landroid/os/Handler;

    .line 98
    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegistrationHandler:Landroid/os/Handler;

    .line 99
    iput-object p6, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-void
.end method


# virtual methods
.method public configure(Lcom/android/server/display/config/SensorData;I)V
    .registers 5

    if-nez p2, :cond_4

    const/4 p2, 0x5

    goto :goto_5

    :cond_4
    const/4 p2, 0x0

    .line 143
    :goto_5
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 147
    const-string v0, "LightSensorController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRegisteredLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$restart$0(Landroid/hardware/Sensor;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method

.method public final synthetic lambda$stop$1(Landroid/hardware/Sensor;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public restart()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_7

    goto :goto_2a

    :cond_7
    if-eqz v1, :cond_13

    .line 110
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegistrationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/brightness/clamper/LightSensorController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/server/display/brightness/clamper/LightSensorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;Landroid/hardware/Sensor;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1a

    .line 115
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 117
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 119
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_2a

    .line 120
    const-string p0, "LightSensorController"

    const-string/jumbo v0, "restart"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public stop()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_5

    goto :goto_2a

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegistrationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/brightness/clamper/LightSensorController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;Landroid/hardware/Sensor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 133
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 134
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p0, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;->onAmbientLuxChange(F)V

    .line 135
    sget-boolean p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz p0, :cond_2a

    .line 136
    const-string p0, "LightSensorController"

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method
