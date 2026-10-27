.class Lcom/android/server/sensorprivacy/CameraPrivacyLightController;
.super Ljava/lang/Object;
.source "CameraPrivacyLightController.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final LIGHT_VALUE_MULTIPLIER:D


# instance fields
.field private final mActivePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivePhonePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlvSum:J

.field private final mAmbientLightValues:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCameraLights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDayColor:I

.field private final mDelayedUpdateToken:Ljava/lang/Object;

.field private mElapsedRealTime:J

.field private mElapsedTimeStartedReading:J

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAmbientLightListenerRegistered:Z

.field private mLastLightColor:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightsManager:Landroid/hardware/lights/LightsManager;

.field private mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

.field private final mMovingAverageIntervalMillis:J

.field private final mNightColor:I

.field private final mNightThreshold:J

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static synthetic $r8$lambda$oF1MmepPqcW5ADy1TzOYmMSBM0E(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 54
    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    sput-wide v2, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 83
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    .line 86
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 87
    iput v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    .line 94
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 102
    iput-object p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    .line 104
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 107
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 108
    const-class v1, Landroid/hardware/lights/LightsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    .line 109
    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 111
    const v2, 0x10600b1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDayColor:I

    .line 112
    const v2, 0x10600b2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightColor:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    const v3, 0x10e0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    const v3, 0x10e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightThreshold:J

    .line 119
    invoke-virtual {v1}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "lights":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_bb

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/Light;

    .line 122
    .local v3, "light":Landroid/hardware/lights/Light;
    invoke-virtual {v3}, Landroid/hardware/lights/Light;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_b8

    .line 123
    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v3    # "light":Landroid/hardware/lights/Light;
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    .line 127
    .end local v2    # "i":I
    :cond_bb
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 128
    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 129
    return-void

    .line 132
    :cond_c6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:camera"

    const-string v3, "android:phone_call_camera"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    .line 139
    return-void
.end method

.method private addElement(JI)V
    .registers 11
    .param p1, "time"    # J
    .param p3, "value"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 145
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_23
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 148
    .local v0, "lastElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 150
    iget-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 152
    return-void
.end method

.method private getCurrentIntervalMillis()J
    .registers 7

    .line 290
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    .line 291
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    sub-long/2addr v2, v4

    .line 290
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getElapsedRealTime()J
    .registers 5

    .line 266
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_c
    return-wide v0
.end method

.method private getLiveAmbientLightTotal()J
    .registers 13

    .line 171
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 172
    iget-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    return-wide v0

    .line 174
    :cond_b
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    .line 175
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->removeObsoleteData(J)V

    .line 177
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 178
    .local v2, "firstElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 180
    .local v3, "lastElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-wide v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v8

    sub-long v8, v0, v8

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 181
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 180
    return-wide v4
.end method

.method private removeObsoleteData(J)V
    .registers 11
    .param p1, "time"    # J

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_52

    .line 156
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 157
    .local v0, "element0":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 158
    .local v1, "element1":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    .line 159
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAmbientLightValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 160
    goto :goto_52

    .line 162
    :cond_31
    iget-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mAlvSum:J

    .line 163
    .end local v0    # "element0":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v1    # "element1":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 164
    :cond_52
    :goto_52
    return-void
.end method

.method private updateLightSession()V
    .registers 9

    .line 205
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 206
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void

    .line 210
    :cond_17
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/permission/PermissionManager;->getIndicatorExemptedPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 212
    .local v0, "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 213
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 214
    .local v1, "shouldSessionEnd":Z
    :goto_30
    invoke-direct {p0, v1}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateSensorListener(Z)V

    .line 216
    if-eqz v1, :cond_41

    .line 217
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v2, :cond_3a

    .line 218
    return-void

    .line 221
    :cond_3a
    invoke-virtual {v2}, Landroid/hardware/lights/LightsManager$LightsSession;->close()V

    .line 222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    goto :goto_a5

    .line 225
    :cond_41
    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_57

    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getLiveAmbientLightTotal()J

    move-result-wide v2

    .line 226
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getCurrentIntervalMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightThreshold:J

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_57

    .line 227
    iget v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mNightColor:I

    .local v2, "lightColor":I
    goto :goto_59

    .line 229
    .end local v2    # "lightColor":I
    :cond_57
    iget v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDayColor:I

    .line 232
    .restart local v2    # "lightColor":I
    :goto_59
    iget v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    if-ne v3, v2, :cond_62

    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-eqz v3, :cond_62

    .line 233
    return-void

    .line 235
    :cond_62
    iput v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLastLightColor:I

    .line 237
    new-instance v3, Landroid/hardware/lights/LightsRequest$Builder;

    invoke-direct {v3}, Landroid/hardware/lights/LightsRequest$Builder;-><init>()V

    .line 238
    .local v3, "requestBuilder":Landroid/hardware/lights/LightsRequest$Builder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6a
    iget-object v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8d

    .line 239
    iget-object v5, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mCameraLights:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/Light;

    new-instance v6, Landroid/hardware/lights/LightState$Builder;

    invoke-direct {v6}, Landroid/hardware/lights/LightState$Builder;-><init>()V

    .line 241
    invoke-virtual {v6, v2}, Landroid/hardware/lights/LightState$Builder;->setColor(I)Landroid/hardware/lights/LightState$Builder;

    move-result-object v6

    .line 242
    invoke-virtual {v6}, Landroid/hardware/lights/LightState$Builder;->build()Landroid/hardware/lights/LightState;

    move-result-object v6

    .line 239
    invoke-virtual {v3, v5, v6}, Landroid/hardware/lights/LightsRequest$Builder;->addLight(Landroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)Landroid/hardware/lights/LightsRequest$Builder;

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 245
    .end local v4    # "i":I
    :cond_8d
    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    if-nez v4, :cond_9c

    .line 246
    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsManager:Landroid/hardware/lights/LightsManager;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/hardware/lights/LightsManager;->openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    .line 249
    :cond_9c
    iget-object v4, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightsSession:Landroid/hardware/lights/LightsManager$LightsSession;

    invoke-virtual {v3}, Landroid/hardware/lights/LightsRequest$Builder;->build()Landroid/hardware/lights/LightsRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/lights/LightsManager$LightsSession;->requestLights(Landroid/hardware/lights/LightsRequest;)V

    .line 251
    .end local v2    # "lightColor":I
    .end local v3    # "requestBuilder":Landroid/hardware/lights/LightsRequest$Builder;
    :goto_a5
    return-void
.end method

.method private updateSensorListener(Z)V
    .registers 6
    .param p1, "shouldSessionEnd"    # Z

    .line 254
    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-eqz v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 258
    :cond_e
    if-nez p1, :cond_29

    iget-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_29

    .line 259
    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mIsAmbientLightListenerRegistered:Z

    .line 261
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->getElapsedRealTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedTimeStartedReading:J

    .line 263
    :cond_29
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 287
    return-void
.end method

.method public onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "active"    # Z

    .line 187
    const-string v0, "android:camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePackages:Ljava/util/Set;

    .local v0, "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_15

    .line 189
    .end local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b
    const-string v0, "android:phone_call_camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 190
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mActivePhonePackages:Ljava/util/Set;

    .line 195
    .restart local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_15
    if-eqz p4, :cond_1b

    .line 196
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 198
    :cond_1b
    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    :goto_1e
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 202
    return-void

    .line 192
    .end local v0    # "activePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_22
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 278
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v4, v2

    .line 279
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->LIGHT_VALUE_MULTIPLIER:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 278
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->addElement(JI)V

    .line 280
    invoke-direct {p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->updateLightSession()V

    .line 281
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/CameraPrivacyLightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensorprivacy/CameraPrivacyLightController;)V

    iget-object v2, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mDelayedUpdateToken:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mMovingAverageIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 284
    return-void
.end method

.method setElapsedRealTime(J)V
    .registers 3
    .param p1, "time"    # J

    .line 271
    iput-wide p1, p0, Lcom/android/server/sensorprivacy/CameraPrivacyLightController;->mElapsedRealTime:J

    .line 272
    return-void
.end method
