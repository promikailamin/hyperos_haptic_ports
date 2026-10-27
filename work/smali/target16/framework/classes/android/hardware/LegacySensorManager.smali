.class final Landroid/hardware/LegacySensorManager;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LegacySensorManager$LegacyListener;,
        Landroid/hardware/LegacySensorManager$LmsFilter;
    }
.end annotation


# static fields
.field private static greylist-max-o sInitialized:Z

.field private static greylist-max-o sRotation:I

.field private static greylist-max-o sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private final greylist-max-o mLegacyListenersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/SensorListener;",
            "Landroid/hardware/LegacySensorManager$LegacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/SensorManager;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    .line 47
    iput-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 49
    const-class p1, Landroid/hardware/SensorManager;

    monitor-enter p1

    .line 50
    :try_start_f
    sget-boolean v0, Landroid/hardware/LegacySensorManager;->sInitialized:Z

    if-nez v0, :cond_34

    .line 51
    const-string/jumbo v0, "window"

    .line 52
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    .line 53
    sget-object v0, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_36

    if-eqz v0, :cond_34

    .line 57
    :try_start_24
    sget-object v0, Landroid/hardware/LegacySensorManager;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Landroid/hardware/LegacySensorManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager$1;-><init>(Landroid/hardware/LegacySensorManager;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v0

    sput v0, Landroid/hardware/LegacySensorManager;->sRotation:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_32} :catch_33
    .catchall {:try_start_24 .. :try_end_32} :catchall_36

    .line 64
    goto :goto_34

    .line 63
    :catch_33
    move-exception v0

    .line 67
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit p1

    .line 68
    return-void

    .line 67
    :catchall_36
    move-exception v0

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_36

    throw v0
.end method

.method static greylist-max-o getRotation()I
    .registers 2

    .line 201
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 202
    :try_start_3
    sget v1, Landroid/hardware/LegacySensorManager;->sRotation:I

    monitor-exit v0

    return v1

    .line 203
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static greylist-max-o onRotationChanged(I)V
    .registers 2

    .line 195
    const-class v0, Landroid/hardware/SensorManager;

    monitor-enter v0

    .line 196
    :try_start_3
    sput p0, Landroid/hardware/LegacySensorManager;->sRotation:I

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private greylist-max-o registerLegacyListener(IILandroid/hardware/SensorListener;II)Z
    .registers 8

    .line 110
    nop

    .line 112
    and-int/2addr p4, p1

    if-eqz p4, :cond_36

    .line 114
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p4, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 115
    if-eqz p2, :cond_36

    .line 120
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter p4

    .line 124
    :try_start_f
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 125
    if-nez v0, :cond_23

    .line 128
    new-instance v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    invoke-direct {v0, p3}, Landroid/hardware/LegacySensorManager$LegacyListener;-><init>(Landroid/hardware/SensorListener;)V

    .line 129
    iget-object v1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_23
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->registerSensor(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 135
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0, p2, p5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    goto :goto_31

    .line 137
    :cond_30
    const/4 p1, 0x1

    .line 139
    :goto_31
    monitor-exit p4

    goto :goto_37

    :catchall_33
    move-exception p1

    monitor-exit p4
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_33

    throw p1

    .line 142
    :cond_36
    const/4 p1, 0x0

    :goto_37
    return p1
.end method

.method private greylist-max-o unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V
    .registers 6

    .line 164
    and-int/2addr p4, p1

    if-eqz p4, :cond_33

    .line 166
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p4, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 167
    if-eqz p2, :cond_33

    .line 172
    iget-object p4, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    monitor-enter p4

    .line 174
    :try_start_e
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/LegacySensorManager$LegacyListener;

    .line 175
    if-eqz v0, :cond_2e

    .line 178
    invoke-virtual {v0, p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->unregisterSensor(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 180
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 184
    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasSensors()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 185
    iget-object p1, p0, Landroid/hardware/LegacySensorManager;->mLegacyListenersMap:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_2e
    monitor-exit p4

    goto :goto_33

    :catchall_30
    move-exception p1

    monitor-exit p4
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_30

    throw p1

    .line 192
    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public greylist-max-o getSensors()I
    .registers 4

    .line 71
    nop

    .line 72
    iget-object v0, p0, Landroid/hardware/LegacySensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 74
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    goto :goto_29

    .line 82
    :pswitch_20
    or-int/lit16 v1, v1, 0x81

    goto :goto_29

    .line 79
    :pswitch_23
    or-int/lit8 v1, v1, 0x8

    .line 80
    goto :goto_29

    .line 76
    :pswitch_26
    or-int/lit8 v1, v1, 0x2

    .line 77
    nop

    .line 86
    :goto_29
    goto :goto_c

    .line 87
    :cond_2a
    return v1

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch
.end method

.method public greylist-max-o registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 11

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 92
    return v0

    .line 94
    :cond_4
    nop

    .line 95
    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    move p1, p2

    .line 97
    :goto_15
    const/16 v2, 0x8

    const/4 v3, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_24

    if-eqz p1, :cond_22

    goto :goto_24

    :cond_22
    move p1, v0

    goto :goto_25

    :cond_24
    :goto_24
    move p1, p2

    .line 99
    :goto_25
    const/16 v2, 0x80

    const/4 v3, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_34

    if-eqz p1, :cond_32

    goto :goto_34

    :cond_32
    move p1, v0

    goto :goto_35

    :cond_34
    :goto_34
    move p1, p2

    .line 101
    :goto_35
    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_43

    if-eqz p1, :cond_41

    goto :goto_43

    :cond_41
    move p1, v0

    goto :goto_44

    :cond_43
    :goto_43
    move p1, p2

    .line 103
    :goto_44
    const/4 v2, 0x4

    const/4 v3, 0x7

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/hardware/LegacySensorManager;->registerLegacyListener(IILandroid/hardware/SensorListener;II)Z

    move-result p3

    if-nez p3, :cond_4f

    if-eqz p1, :cond_50

    :cond_4f
    move v0, p2

    .line 105
    :cond_50
    return v0
.end method

.method public greylist-max-o unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 6

    .line 146
    if-nez p1, :cond_3

    .line 147
    return-void

    .line 149
    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 151
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 153
    const/16 v0, 0x80

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 155
    invoke-direct {p0, v1, v2, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 157
    const/4 v0, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterLegacyListener(IILandroid/hardware/SensorListener;I)V

    .line 159
    return-void
.end method
