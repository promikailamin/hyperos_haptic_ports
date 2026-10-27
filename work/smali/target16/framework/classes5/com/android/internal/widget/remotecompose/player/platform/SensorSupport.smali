.class public Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;
.super Ljava/lang/Object;
.source "SensorSupport.java"


# instance fields
.field blacklist mAcc:Landroid/hardware/Sensor;

.field blacklist mGyro:Landroid/hardware/Sensor;

.field blacklist mLight:Landroid/hardware/Sensor;

.field blacklist mListener:Landroid/hardware/SensorEventListener;

.field blacklist mMag:Landroid/hardware/Sensor;

.field blacklist mRemoteComposeView:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

.field blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mAcc:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mGyro:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mMag:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mLight:Landroid/hardware/Sensor;

    return-void
.end method

.method private blacklist registerListener()V
    .registers 9

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->unregisterListener()V

    .line 94
    :cond_7
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport$1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;)V

    .line 129
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mAcc:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mGyro:Landroid/hardware/Sensor;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mMag:Landroid/hardware/Sensor;

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mLight:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 130
    nop

    :goto_24
    if-ge v4, v1, :cond_36

    .line 131
    aget-object v3, v2, v4

    .line 132
    if-eqz v3, :cond_33

    .line 133
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    .line 134
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v6, v7, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 130
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 138
    :cond_36
    return-void
.end method


# virtual methods
.method public blacklist setupSensors(Landroid/content/Context;Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;)V
    .registers 6

    .line 45
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mRemoteComposeView:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    .line 46
    nop

    .line 47
    nop

    .line 48
    const/16 p2, 0xa

    new-array p2, p2, [I

    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mRemoteComposeView:Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeView;->copySensorListeners([I)I

    move-result v0

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mAcc:Landroid/hardware/Sensor;

    .line 52
    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mGyro:Landroid/hardware/Sensor;

    .line 53
    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mMag:Landroid/hardware/Sensor;

    .line 54
    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mLight:Landroid/hardware/Sensor;

    .line 55
    if-lez v0, :cond_67

    .line 56
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    const/4 p1, 0x0

    :goto_25
    if-ge p1, v0, :cond_67

    .line 58
    aget v1, p2, p1

    packed-switch v1, :pswitch_data_6c

    goto :goto_64

    .line 81
    :pswitch_2d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mLight:Landroid/hardware/Sensor;

    if-nez v1, :cond_64

    .line 82
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mLight:Landroid/hardware/Sensor;

    goto :goto_64

    .line 76
    :pswitch_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mMag:Landroid/hardware/Sensor;

    if-nez v1, :cond_64

    .line 77
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mMag:Landroid/hardware/Sensor;

    goto :goto_64

    .line 69
    :pswitch_49
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mGyro:Landroid/hardware/Sensor;

    if-nez v1, :cond_64

    .line 70
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mGyro:Landroid/hardware/Sensor;

    goto :goto_64

    .line 62
    :pswitch_57
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mAcc:Landroid/hardware/Sensor;

    if-nez v1, :cond_64

    .line 63
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mAcc:Landroid/hardware/Sensor;

    .line 57
    :cond_64
    :goto_64
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 87
    :cond_67
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->registerListener()V

    .line 88
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x11
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_49
        :pswitch_49
        :pswitch_49
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_2d
    .end packed-switch
.end method

.method public blacklist unregisterListener()V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_f

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 148
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/SensorSupport;->mListener:Landroid/hardware/SensorEventListener;

    .line 149
    return-void
.end method
