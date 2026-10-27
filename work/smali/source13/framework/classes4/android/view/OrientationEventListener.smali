.class public abstract Landroid/view/OrientationEventListener;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/OrientationEventListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final blacklist MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final blacklist NANOS_PER_MS:J = 0xf4240L

.field public static final whitelist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "OrientationEventListener"

.field private static final greylist-max-o localLOGV:Z = false


# instance fields
.field private greylist-max-o mEnabled:Z

.field private blacklist mLastFilteredTimestampNanos:J

.field private blacklist mLastFilteredX:F

.field private blacklist mLastFilteredY:F

.field private blacklist mLastFilteredZ:F

.field private greylist-max-o mOldListener:Landroid/view/OrientationListener;

.field private greylist-max-o mOrientation:I

.field private greylist-max-o mRate:I

.field private greylist-max-o mSensor:Landroid/hardware/Sensor;

.field private greylist-max-o mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLastFilteredTimestampNanos(Landroid/view/OrientationEventListener;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/OrientationEventListener;->mLastFilteredTimestampNanos:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFilteredX(Landroid/view/OrientationEventListener;)F
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mLastFilteredX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFilteredY(Landroid/view/OrientationEventListener;)F
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mLastFilteredY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFilteredZ(Landroid/view/OrientationEventListener;)F
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mLastFilteredZ:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;
    .registers 1

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I
    .registers 1

    iget p0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensor(Landroid/view/OrientationEventListener;)Landroid/hardware/Sensor;
    .registers 1

    iget-object p0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFilteredTimestampNanos(Landroid/view/OrientationEventListener;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/OrientationEventListener;->mLastFilteredTimestampNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFilteredX(Landroid/view/OrientationEventListener;F)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mLastFilteredX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFilteredY(Landroid/view/OrientationEventListener;F)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mLastFilteredY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastFilteredZ(Landroid/view/OrientationEventListener;F)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mLastFilteredZ:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V
    .registers 2

    iput p1, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 79
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rate"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/OrientationEventListener;->mOrientation:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 91
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    iput p2, p0, Landroid/view/OrientationEventListener;->mRate:I

    .line 96
    invoke-static {}, Landroid/app/ActivityThread;->isSupportSmartOrient()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Landroid/app/ActivityManager;->isNeedAccSensor()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 97
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    goto :goto_36

    .line 99
    :cond_2d
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    .line 102
    :goto_36
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_41

    .line 104
    new-instance v0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/OrientationEventListener$SensorEventListenerImpl;-><init>(Landroid/view/OrientationEventListener;)V

    iput-object v0, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 106
    :cond_41
    return-void
.end method


# virtual methods
.method public whitelist canDetectOrientation()Z
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist disable()V
    .registers 3

    .line 132
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 133
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 136
    :cond_c
    iget-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 138
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 141
    :cond_1b
    return-void
.end method

.method public whitelist enable()V
    .registers 5

    .line 117
    iget-object v0, p0, Landroid/view/OrientationEventListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_c

    .line 118
    const-string v0, "OrientationEventListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_c
    iget-boolean v1, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    if-nez v1, :cond_1c

    .line 123
    iget-object v1, p0, Landroid/view/OrientationEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Landroid/view/OrientationEventListener;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Landroid/view/OrientationEventListener;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OrientationEventListener;->mEnabled:Z

    .line 126
    :cond_1c
    return-void
.end method

.method public abstract whitelist onOrientationChanged(I)V
.end method

.method greylist-max-o registerListener(Landroid/view/OrientationListener;)V
    .registers 2
    .param p1, "lis"    # Landroid/view/OrientationListener;

    .line 109
    iput-object p1, p0, Landroid/view/OrientationEventListener;->mOldListener:Landroid/view/OrientationListener;

    .line 110
    return-void
.end method
