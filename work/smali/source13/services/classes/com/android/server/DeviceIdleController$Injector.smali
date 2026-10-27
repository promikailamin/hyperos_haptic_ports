.class Lcom/android/server/DeviceIdleController$Injector;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private final mContext:Landroid/content/Context;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2146
    const-string v0, "DeviceIdleController"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    .line 2147
    return-void
.end method


# virtual methods
.method getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .line 2150
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;
    .registers 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "sm"    # Landroid/hardware/SensorManager;
    .param p3, "callback"    # Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .param p4, "angleThreshold"    # F

    .line 2155
    new-instance v6, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    return-object v6
.end method

.method getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTrackerImpl;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2159
    new-instance v0, Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v0
.end method

.method getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 2163
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 2164
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2166
    :cond_10
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method getConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .registers 3
    .param p1, "controller"    # Lcom/android/server/DeviceIdleController;

    .line 2170
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    if-nez v0, :cond_e

    .line 2171
    new-instance v0, Lcom/android/server/DeviceIdleController$Constants;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2173
    :cond_e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)Lcom/android/server/deviceidle/ConstraintController;
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "localService"    # Lcom/android/server/DeviceIdleInternal;

    .line 2224
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2225
    const-string v1, "android.software.leanback_only"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2226
    new-instance v0, Lcom/android/server/deviceidle/TvConstraintController;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/deviceidle/TvConstraintController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0

    .line 2228
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 2179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;
    .registers 4
    .param p1, "controller"    # Lcom/android/server/DeviceIdleController;

    .line 2190
    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .registers 3

    .line 2183
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 2184
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 2186
    :cond_10
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method getMotionSensor()Landroid/hardware/Sensor;
    .registers 7

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 2195
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x0

    .line 2196
    .local v1, "motionSensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2198
    .local v2, "sigMotionSensorId":I
    const/4 v3, 0x1

    if-lez v2, :cond_19

    .line 2199
    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2201
    :cond_19
    if-nez v1, :cond_30

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 2203
    const/16 v4, 0x1a

    invoke-virtual {v0, v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2206
    :cond_30
    if-nez v1, :cond_38

    .line 2208
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    .line 2211
    :cond_38
    return-object v1
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 2215
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method

.method getSensorManager()Landroid/hardware/SensorManager;
    .registers 3

    .line 2219
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method useMotionSensor()Z
    .registers 3

    .line 2232
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
