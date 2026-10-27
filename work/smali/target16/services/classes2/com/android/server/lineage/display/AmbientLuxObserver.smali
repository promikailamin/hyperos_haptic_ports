.class public Lcom/android/server/lineage/display/AmbientLuxObserver;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAmbientLux:F

.field public mCallback:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

.field public final mHysteresisLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorEnabled:Z

.field public mLightSensorRate:I

.field public final mListener:Landroid/hardware/SensorEventListener;

.field public final mLuxHandler:Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

.field public final mRingBuffer:Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mState:I

.field public final mThresholdDuration:I

.field public final mThresholdLux:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mAmbientLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mCallback:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHysteresisLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mHysteresisLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightSensorEnabled(Lcom/android/server/lineage/display/AmbientLuxObserver;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLuxHandler(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRingBuffer(Lcom/android/server/lineage/display/AmbientLuxObserver;)Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/lineage/display/AmbientLuxObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdDuration(Lcom/android/server/lineage/display/AmbientLuxObserver;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mThresholdDuration:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThresholdLux(Lcom/android/server/lineage/display/AmbientLuxObserver;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mThresholdLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAmbientLux(Lcom/android/server/lineage/display/AmbientLuxObserver;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/android/server/lineage/display/AmbientLuxObserver;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/lineage/display/AmbientLuxObserver;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string v0, "AmbientLuxObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/lineage/display/AmbientLuxObserver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;FFI)V
    .registers 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mAmbientLux:F

    .line 52
    iput v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mState:I

    .line 134
    new-instance v0, Lcom/android/server/lineage/display/AmbientLuxObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$1;-><init>(Lcom/android/server/lineage/display/AmbientLuxObserver;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    .line 66
    new-instance v0, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;-><init>(Lcom/android/server/lineage/display/AmbientLuxObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    .line 67
    iput p3, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mThresholdLux:F

    .line 68
    iput p4, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mHysteresisLux:F

    .line 69
    iput p5, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mThresholdDuration:I

    .line 70
    new-instance p2, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-direct {p2, p5}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    .line 72
    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p3, 0x5

    .line 73
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0032

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorRate:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    const-string v0, "  AmbientLuxObserver State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enableLightSensor(Z)V
    .registers 5

    if-eqz p1, :cond_19

    .line 159
    iget-boolean v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-nez v0, :cond_19

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 161
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorRate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void

    :cond_19
    if-nez p1, :cond_38

    .line 163
    iget-boolean p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-eqz p1, :cond_38

    .line 164
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-virtual {p1}, Lcom/android/server/lineage/display/AmbientLuxObserver$AmbientLuxHandler;->clear()V

    const/4 p1, 0x0

    .line 166
    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mAmbientLux:F

    const/4 p1, 0x0

    .line 167
    iput p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mState:I

    .line 168
    iput-boolean p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 169
    iget-object p0, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->clear()V

    :cond_38
    return-void
.end method

.method public declared-synchronized setTransitionListener(Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;)V
    .registers 2

    monitor-enter p0

    .line 154
    :try_start_1
    iput-object p1, p0, Lcom/android/server/lineage/display/AmbientLuxObserver;->mCallback:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 155
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->enableLightSensor(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 156
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method
