.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;,
        Landroid/hardware/SensorManager$DataInjectionMode;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_MINUS_X:I = 0x81

.field public static final whitelist AXIS_MINUS_Y:I = 0x82

.field public static final whitelist AXIS_MINUS_Z:I = 0x83

.field public static final whitelist AXIS_X:I = 0x1

.field public static final whitelist AXIS_Y:I = 0x2

.field public static final whitelist AXIS_Z:I = 0x3

.field public static final blacklist DATA_INJECTION:I = 0x1

.field public static final whitelist DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final whitelist GRAVITY_EARTH:F = 9.80665f

.field public static final whitelist GRAVITY_JUPITER:F = 23.12f

.field public static final whitelist GRAVITY_MARS:F = 3.71f

.field public static final whitelist GRAVITY_MERCURY:F = 3.7f

.field public static final whitelist GRAVITY_MOON:F = 1.6f

.field public static final whitelist GRAVITY_NEPTUNE:F = 11.0f

.field public static final whitelist GRAVITY_PLUTO:F = 0.6f

.field public static final whitelist GRAVITY_SATURN:F = 8.96f

.field public static final whitelist GRAVITY_SUN:F = 275.0f

.field public static final whitelist GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final whitelist GRAVITY_URANUS:F = 8.69f

.field public static final whitelist GRAVITY_VENUS:F = 8.87f

.field public static final blacklist HAL_BYPASS_REPLAY_DATA_INJECTION:I = 0x4

.field public static final whitelist LIGHT_CLOUDY:F = 100.0f

.field public static final whitelist LIGHT_FULLMOON:F = 0.25f

.field public static final whitelist LIGHT_NO_MOON:F = 0.001f

.field public static final whitelist LIGHT_OVERCAST:F = 10000.0f

.field public static final whitelist LIGHT_SHADE:F = 20000.0f

.field public static final whitelist LIGHT_SUNLIGHT:F = 110000.0f

.field public static final whitelist LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final whitelist LIGHT_SUNRISE:F = 400.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final whitelist PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final whitelist RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist REPLAY_DATA_INJECTION:I = 0x3

.field public static final whitelist SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_DELAY_FASTEST:I = 0x0

.field public static final whitelist SENSOR_DELAY_GAME:I = 0x1

.field public static final whitelist SENSOR_DELAY_NORMAL:I = 0x3

.field public static final whitelist SENSOR_DELAY_UI:I = 0x2

.field public static final whitelist SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final whitelist SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final whitelist SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final whitelist SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final whitelist SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STANDARD_GRAVITY:F = 9.80665f

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "SensorManager"

.field private static final greylist-max-o sTempMatrix:[F


# instance fields
.field private greylist-max-o mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final greylist-max-o mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 385
    return-void
.end method

.method public static whitelist getAltitude(FF)F
    .registers 4

    .line 1562
    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x472d2a00    # 44330.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public static whitelist getAngleChange([F[F[F)V
    .registers 28

    .line 1596
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1597
    nop

    .line 1598
    nop

    .line 1599
    nop

    .line 1601
    array-length v2, v0

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x9

    if-ne v2, v15, :cond_2e

    .line 1602
    aget v2, v0, v13

    .line 1603
    aget v16, v0, v12

    .line 1604
    aget v17, v0, v11

    .line 1605
    aget v18, v0, v5

    .line 1606
    aget v19, v0, v10

    .line 1607
    aget v20, v0, v9

    .line 1608
    aget v21, v0, v8

    .line 1609
    aget v22, v0, v4

    .line 1610
    aget v0, v0, v7

    goto :goto_54

    .line 1611
    :cond_2e
    array-length v2, v0

    if-ne v2, v6, :cond_44

    .line 1612
    aget v2, v0, v13

    .line 1613
    aget v16, v0, v12

    .line 1614
    aget v17, v0, v11

    .line 1615
    aget v18, v0, v10

    .line 1616
    aget v19, v0, v9

    .line 1617
    aget v20, v0, v8

    .line 1618
    aget v21, v0, v7

    .line 1619
    aget v22, v0, v15

    .line 1620
    aget v0, v0, v3

    goto :goto_54

    .line 1611
    :cond_44
    move v0, v14

    move v2, v0

    move/from16 v16, v2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    .line 1623
    :goto_54
    move/from16 v23, v3

    array-length v3, v1

    if-ne v3, v15, :cond_71

    .line 1624
    aget v14, v1, v13

    .line 1625
    aget v3, v1, v12

    .line 1626
    aget v6, v1, v11

    .line 1627
    aget v5, v1, v5

    .line 1628
    aget v10, v1, v10

    .line 1629
    aget v9, v1, v9

    .line 1630
    aget v8, v1, v8

    .line 1631
    aget v4, v1, v4

    .line 1632
    aget v1, v1, v7

    move v7, v8

    move v8, v9

    move v9, v1

    move v1, v6

    move v6, v10

    goto :goto_95

    .line 1633
    :cond_71
    array-length v3, v1

    if-ne v3, v6, :cond_8d

    .line 1634
    aget v14, v1, v13

    .line 1635
    aget v3, v1, v12

    .line 1636
    aget v4, v1, v11

    .line 1637
    aget v5, v1, v10

    .line 1638
    aget v6, v1, v9

    .line 1639
    aget v8, v1, v8

    .line 1640
    aget v7, v1, v7

    .line 1641
    aget v9, v1, v15

    .line 1642
    aget v1, v1, v23

    move/from16 v24, v9

    move v9, v1

    move v1, v4

    move/from16 v4, v24

    goto :goto_95

    .line 1633
    :cond_8d
    move v1, v14

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    .line 1648
    :goto_95
    mul-float v14, v14, v16

    mul-float v5, v5, v19

    add-float/2addr v14, v5

    mul-float v7, v7, v22

    add-float/2addr v14, v7

    .line 1649
    mul-float v3, v3, v16

    mul-float v6, v6, v19

    add-float/2addr v3, v6

    mul-float v4, v4, v22

    add-float/2addr v3, v4

    .line 1650
    mul-float/2addr v2, v1

    mul-float v18, v18, v8

    add-float v2, v2, v18

    mul-float v21, v21, v9

    add-float v2, v2, v21

    .line 1651
    mul-float v16, v16, v1

    mul-float v19, v19, v8

    add-float v16, v16, v19

    mul-float v22, v22, v9

    add-float v4, v16, v22

    .line 1652
    mul-float v1, v1, v17

    mul-float v8, v8, v20

    add-float/2addr v1, v8

    mul-float/2addr v9, v0

    add-float/2addr v1, v9

    .line 1654
    float-to-double v5, v14

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p0, v13

    .line 1655
    neg-float v0, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p0, v12

    .line 1656
    neg-float v0, v2

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v11

    .line 1658
    return-void
.end method

.method private static greylist-max-o getDelay(I)I
    .registers 1

    .line 1982
    nop

    .line 1983
    packed-switch p0, :pswitch_data_16

    .line 1997
    goto :goto_15

    .line 1994
    :pswitch_5
    nop

    .line 1995
    const p0, 0x30d40

    goto :goto_15

    .line 1991
    :pswitch_a
    nop

    .line 1992
    const p0, 0x1046b

    goto :goto_15

    .line 1988
    :pswitch_f
    nop

    .line 1989
    const/16 p0, 0x4e20

    goto :goto_15

    .line 1985
    :pswitch_13
    nop

    .line 1986
    const/4 p0, 0x0

    .line 2000
    :goto_15
    return p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist getInclination([F)F
    .registers 5

    .line 1297
    array-length v0, p0

    const/16 v1, 0x9

    const/4 v2, 0x5

    if-ne v0, v1, :cond_13

    .line 1298
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 1300
    :cond_13
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private greylist-max-o getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .registers 4

    .line 1971
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_15

    .line 1973
    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 1977
    :cond_15
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object v1

    .line 1978
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static whitelist getOrientation([F[F)[F
    .registers 12

    .line 1518
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ne v0, v5, :cond_34

    .line 1519
    aget v0, p0, v4

    float-to-double v5, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v3

    .line 1520
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    .line 1521
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    goto :goto_5d

    .line 1523
    :cond_34
    aget v0, p0, v4

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    .line 1524
    aget v0, p0, v5

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    .line 1525
    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget p0, p0, v3

    float-to-double v3, p0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    .line 1528
    :goto_5d
    return-object p1
.end method

.method public static whitelist getQuaternionFromVector([F[F)V
    .registers 9

    .line 1743
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_d

    .line 1744
    aget v0, p1, v2

    aput v0, p0, v5

    goto :goto_34

    .line 1746
    :cond_d
    aget v0, p1, v5

    aget v1, p1, v5

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    aget v0, p1, v4

    aget v6, p1, v4

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aget v0, p1, v3

    aget v6, p1, v3

    mul-float/2addr v0, v6

    sub-float/2addr v1, v0

    aput v1, p0, v5

    .line 1747
    aget v0, p0, v5

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v1, v0

    :cond_32
    aput v1, p0, v5

    .line 1749
    :goto_34
    aget v0, p1, v5

    aput v0, p0, v4

    .line 1750
    aget v0, p1, v4

    aput v0, p0, v3

    .line 1751
    aget p1, p1, v3

    aput p1, p0, v2

    .line 1752
    return-void
.end method

.method public static whitelist getRotationMatrix([F[F[F[F)Z
    .registers 36

    .line 1212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    .line 1213
    const/4 v4, 0x1

    aget v5, p2, v4

    .line 1214
    const/4 v6, 0x2

    aget v7, p2, v6

    .line 1216
    mul-float v8, v3, v3

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    .line 1219
    const v9, 0x3f765d4b

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1d

    .line 1221
    return v2

    .line 1224
    :cond_1d
    aget v9, p3, v2

    .line 1225
    aget v10, p3, v4

    .line 1226
    aget v11, p3, v6

    .line 1227
    mul-float v12, v10, v7

    mul-float v13, v11, v5

    sub-float/2addr v12, v13

    .line 1228
    mul-float v13, v11, v3

    mul-float v14, v9, v7

    sub-float/2addr v13, v14

    .line 1229
    mul-float v14, v9, v5

    mul-float v15, v10, v3

    sub-float/2addr v14, v15

    .line 1230
    mul-float v15, v12, v12

    mul-float v16, v13, v13

    add-float v15, v15, v16

    mul-float v16, v14, v14

    add-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v3

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1232
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4e

    .line 1235
    return v16

    .line 1237
    :cond_4e
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 1238
    mul-float/2addr v12, v2

    .line 1239
    mul-float/2addr v13, v2

    .line 1240
    mul-float/2addr v14, v2

    .line 1241
    move/from16 p2, v3

    move v2, v4

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float v3, p2, v3

    .line 1242
    mul-float v4, v17, v3

    .line 1243
    mul-float/2addr v5, v3

    .line 1244
    mul-float/2addr v7, v3

    .line 1245
    mul-float v3, v5, v14

    mul-float v8, v7, v13

    sub-float/2addr v3, v8

    .line 1246
    mul-float v8, v7, v12

    mul-float v15, v4, v14

    sub-float/2addr v8, v15

    .line 1247
    mul-float v15, v4, v13

    mul-float v17, v5, v12

    sub-float v15, v15, v17

    .line 1248
    const/16 v17, 0xf

    const/16 v18, 0xe

    const/16 v19, 0xd

    const/16 v20, 0xc

    const/16 v21, 0xb

    const/16 v22, 0xa

    move/from16 p3, v2

    const/16 v23, 0x8

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    move/from16 v29, v6

    const/16 v6, 0x9

    const/16 v30, 0x0

    if-eqz v0, :cond_d6

    .line 1249
    array-length v2, v0

    if-ne v2, v6, :cond_ae

    .line 1250
    aput v12, v0, v16

    aput v13, v0, p3

    aput v14, v0, v29

    .line 1251
    aput v3, v0, v28

    aput v8, v0, v27

    aput v15, v0, v26

    .line 1252
    aput v4, v0, v25

    aput v5, v0, v24

    aput v7, v0, v23

    move/from16 v31, v6

    goto :goto_d8

    .line 1253
    :cond_ae
    array-length v2, v0

    move/from16 v31, v6

    const/16 v6, 0x10

    if-ne v2, v6, :cond_d8

    .line 1254
    aput v12, v0, v16

    aput v13, v0, p3

    aput v14, v0, v29

    aput v30, v0, v28

    .line 1255
    aput v3, v0, v27

    aput v8, v0, v26

    aput v15, v0, v25

    aput v30, v0, v24

    .line 1256
    aput v4, v0, v23

    aput v5, v0, v31

    aput v7, v0, v22

    aput v30, v0, v21

    .line 1257
    aput v30, v0, v20

    aput v30, v0, v19

    aput v30, v0, v18

    aput p2, v0, v17

    goto :goto_d8

    .line 1248
    :cond_d6
    move/from16 v31, v6

    .line 1260
    :cond_d8
    :goto_d8
    if-eqz v1, :cond_137

    .line 1264
    mul-float v0, v9, v9

    mul-float v2, v10, v10

    add-float/2addr v0, v2

    mul-float v2, v11, v11

    add-float/2addr v0, v2

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    div-float v0, p2, v0

    .line 1265
    mul-float/2addr v3, v9

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v15, v11

    add-float/2addr v3, v15

    mul-float/2addr v3, v0

    .line 1266
    mul-float/2addr v9, v4

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    mul-float/2addr v9, v0

    .line 1267
    array-length v0, v1

    move/from16 v2, v31

    if-ne v0, v2, :cond_10f

    .line 1268
    aput p2, v1, v16

    aput v30, v1, p3

    aput v30, v1, v29

    .line 1269
    aput v30, v1, v28

    aput v3, v1, v27

    aput v9, v1, v26

    .line 1270
    aput v30, v1, v25

    neg-float v0, v9

    aput v0, v1, v24

    aput v3, v1, v23

    goto :goto_137

    .line 1271
    :cond_10f
    array-length v0, v1

    const/16 v6, 0x10

    if-ne v0, v6, :cond_137

    .line 1272
    aput p2, v1, v16

    aput v30, v1, p3

    aput v30, v1, v29

    .line 1273
    aput v30, v1, v27

    aput v3, v1, v26

    aput v9, v1, v25

    .line 1274
    aput v30, v1, v23

    neg-float v0, v9

    const/16 v31, 0x9

    aput v0, v1, v31

    aput v3, v1, v22

    .line 1275
    aput v30, v1, v18

    aput v30, v1, v19

    aput v30, v1, v20

    aput v30, v1, v21

    aput v30, v1, v24

    aput v30, v1, v28

    .line 1276
    aput p2, v1, v17

    .line 1279
    :cond_137
    :goto_137
    return p3
.end method

.method public static whitelist getRotationMatrixFromVector([F[F)V
    .registers 25

    .line 1682
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1683
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 1684
    const/4 v6, 0x2

    aget v7, v1, v6

    .line 1686
    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-lt v8, v12, :cond_18

    .line 1687
    aget v1, v1, v9

    goto :goto_2e

    .line 1689
    :cond_18
    mul-float v1, v3, v3

    sub-float v1, v11, v1

    mul-float v8, v5, v5

    sub-float/2addr v1, v8

    mul-float v8, v7, v7

    sub-float/2addr v1, v8

    .line 1690
    cmpl-float v8, v1, v10

    if-lez v8, :cond_2d

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v1, v13

    goto :goto_2e

    :cond_2d
    move v1, v10

    .line 1693
    :goto_2e
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v13, v3, v8

    mul-float/2addr v3, v13

    .line 1694
    mul-float v14, v5, v8

    mul-float v15, v14, v5

    .line 1695
    mul-float/2addr v8, v7

    mul-float v16, v8, v7

    .line 1696
    mul-float/2addr v5, v13

    .line 1697
    mul-float/2addr v8, v1

    .line 1698
    mul-float v17, v13, v7

    .line 1699
    mul-float v18, v14, v1

    .line 1700
    mul-float/2addr v14, v7

    .line 1701
    mul-float/2addr v13, v1

    .line 1703
    array-length v1, v0

    const/16 v7, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    move/from16 v22, v2

    const/16 v2, 0x9

    if-ne v1, v2, :cond_76

    .line 1704
    sub-float v1, v11, v15

    sub-float v1, v1, v16

    aput v1, v0, v22

    .line 1705
    sub-float v1, v5, v8

    aput v1, v0, v4

    .line 1706
    add-float v1, v17, v18

    aput v1, v0, v6

    .line 1708
    add-float/2addr v5, v8

    aput v5, v0, v9

    .line 1709
    sub-float/2addr v11, v3

    sub-float v1, v11, v16

    aput v1, v0, v12

    .line 1710
    sub-float v1, v14, v13

    aput v1, v0, v21

    .line 1712
    sub-float v17, v17, v18

    aput v17, v0, v20

    .line 1713
    add-float/2addr v14, v13

    aput v14, v0, v19

    .line 1714
    sub-float/2addr v11, v15

    aput v11, v0, v7

    goto :goto_bc

    .line 1715
    :cond_76
    array-length v1, v0

    move/from16 p1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_bc

    .line 1716
    sub-float v1, v11, v15

    sub-float v1, v1, v16

    aput v1, v0, v22

    .line 1717
    sub-float v1, v5, v8

    aput v1, v0, v4

    .line 1718
    add-float v1, v17, v18

    aput v1, v0, v6

    .line 1719
    aput v10, v0, v9

    .line 1721
    add-float/2addr v5, v8

    aput v5, v0, v12

    .line 1722
    sub-float v1, v11, v3

    sub-float v2, v1, v16

    aput v2, v0, v21

    .line 1723
    sub-float v2, v14, v13

    aput v2, v0, v20

    .line 1724
    aput v10, v0, v19

    .line 1726
    sub-float v17, v17, v18

    aput v17, v0, v7

    .line 1727
    add-float/2addr v14, v13

    aput v14, v0, p1

    .line 1728
    const/16 v2, 0xa

    sub-float/2addr v1, v15

    aput v1, v0, v2

    .line 1729
    const/16 v1, 0xb

    aput v10, v0, v1

    .line 1731
    const/16 v1, 0xe

    aput v10, v0, v1

    const/16 v1, 0xd

    aput v10, v0, v1

    const/16 v1, 0xc

    aput v10, v0, v1

    .line 1732
    const/16 v1, 0xf

    aput v11, v0, v1

    .line 1734
    :cond_bc
    :goto_bc
    return-void
.end method

.method public static whitelist remapCoordinateSystem([FII[F)Z
    .registers 6

    .line 1380
    if-ne p0, p3, :cond_1e

    .line 1381
    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    .line 1382
    monitor-enter v0

    .line 1384
    :try_start_5
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1385
    array-length p0, p3

    .line 1386
    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_16

    .line 1387
    aget p2, v0, p1

    aput p2, p3, p1

    .line 1386
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 1389
    :cond_16
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1391
    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p0

    .line 1393
    :cond_1e
    :goto_1e
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o remapCoordinateSystemImpl([FII[F)Z
    .registers 24

    .line 1408
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    .line 1409
    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_e

    .line 1410
    return v6

    .line 1412
    :cond_e
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_d8

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1a

    move/from16 v16, v6

    goto/16 :goto_da

    .line 1415
    :cond_1a
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_d5

    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_26

    move/from16 v16, v6

    goto/16 :goto_d7

    .line 1418
    :cond_26
    if-ne v5, v7, :cond_29

    .line 1419
    return v6

    .line 1425
    :cond_29
    xor-int v8, v1, v2

    .line 1428
    const/4 v9, 0x1

    sub-int/2addr v5, v9

    .line 1429
    sub-int/2addr v7, v9

    .line 1430
    and-int/lit8 v10, v8, 0x3

    sub-int/2addr v10, v9

    .line 1433
    add-int/lit8 v11, v10, 0x1

    const/4 v12, 0x3

    rem-int/2addr v11, v12

    .line 1434
    add-int/lit8 v13, v10, 0x2

    rem-int/2addr v13, v12

    .line 1435
    xor-int/2addr v11, v5

    xor-int/2addr v13, v7

    or-int/2addr v11, v13

    if-eqz v11, :cond_3f

    .line 1436
    xor-int/lit16 v8, v8, 0x80

    .line 1439
    :cond_3f
    const/16 v11, 0x80

    if-lt v1, v11, :cond_45

    move v1, v9

    goto :goto_46

    :cond_45
    move v1, v6

    .line 1440
    :goto_46
    if-lt v2, v11, :cond_4a

    move v2, v9

    goto :goto_4b

    :cond_4a
    move v2, v6

    .line 1441
    :goto_4b
    if-lt v8, v11, :cond_4f

    move v8, v9

    goto :goto_50

    :cond_4f
    move v8, v6

    .line 1444
    :goto_50
    const/16 v11, 0x10

    if-ne v4, v11, :cond_56

    const/4 v13, 0x4

    goto :goto_57

    :cond_56
    move v13, v12

    .line 1445
    :goto_57
    move v14, v6

    :goto_58
    if-ge v14, v12, :cond_b2

    .line 1446
    mul-int v15, v14, v13

    .line 1447
    move/from16 v16, v6

    :goto_5e
    if-ge v6, v12, :cond_a9

    .line 1448
    if-ne v5, v6, :cond_77

    add-int v17, v15, v6

    if-eqz v1, :cond_6e

    add-int/lit8 v18, v15, 0x0

    move/from16 v19, v9

    aget v9, v0, v18

    neg-float v9, v9

    goto :goto_74

    :cond_6e
    move/from16 v19, v9

    add-int/lit8 v9, v15, 0x0

    aget v9, v0, v9

    :goto_74
    aput v9, v3, v17

    goto :goto_79

    :cond_77
    move/from16 v19, v9

    .line 1449
    :goto_79
    if-ne v7, v6, :cond_90

    add-int v9, v15, v6

    if-eqz v2, :cond_87

    add-int/lit8 v17, v15, 0x1

    move/from16 v18, v12

    aget v12, v0, v17

    neg-float v12, v12

    goto :goto_8d

    :cond_87
    move/from16 v18, v12

    add-int/lit8 v12, v15, 0x1

    aget v12, v0, v12

    :goto_8d
    aput v12, v3, v9

    goto :goto_92

    :cond_90
    move/from16 v18, v12

    .line 1450
    :goto_92
    if-ne v10, v6, :cond_a2

    add-int v9, v15, v6

    add-int/lit8 v12, v15, 0x2

    if-eqz v8, :cond_9e

    aget v12, v0, v12

    neg-float v12, v12

    goto :goto_a0

    :cond_9e
    aget v12, v0, v12

    :goto_a0
    aput v12, v3, v9

    .line 1447
    :cond_a2
    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v18

    move/from16 v9, v19

    goto :goto_5e

    .line 1445
    :cond_a9
    move/from16 v19, v9

    move/from16 v18, v12

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    goto :goto_58

    .line 1453
    :cond_b2
    move/from16 v19, v9

    move/from16 v18, v12

    if-ne v4, v11, :cond_d4

    .line 1454
    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0xd

    aput v1, v3, v0

    const/16 v0, 0xc

    aput v1, v3, v0

    const/16 v0, 0xb

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    aput v1, v3, v18

    .line 1455
    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    .line 1457
    :cond_d4
    return v19

    .line 1415
    :cond_d5
    move/from16 v16, v6

    .line 1416
    :goto_d7
    return v16

    .line 1412
    :cond_d8
    move/from16 v16, v6

    .line 1413
    :goto_da
    return v16
.end method


# virtual methods
.method public whitelist cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4

    .line 1806
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected abstract greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public whitelist createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 3

    .line 966
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .registers 3

    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p1

    return-object p1
.end method

.method protected abstract greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method greylist-max-o destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .registers 2

    .line 975
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    .line 976
    return-void
.end method

.method protected abstract greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public whitelist flush(Landroid/hardware/SensorEventListener;)Z
    .registers 2

    .line 918
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 5

    .line 526
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 527
    nop

    .line 531
    const/16 v1, 0x8

    if-eq p1, v1, :cond_30

    const/16 v1, 0x11

    if-eq p1, v1, :cond_30

    const/16 v1, 0x16

    if-eq p1, v1, :cond_30

    const/16 v1, 0x17

    if-eq p1, v1, :cond_30

    const/16 v1, 0x18

    if-eq p1, v1, :cond_30

    const/16 v1, 0x19

    if-eq p1, v1, :cond_30

    const/16 v1, 0x22

    if-eq p1, v1, :cond_30

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_30

    const/16 v1, 0x20

    if-eq p1, v1, :cond_30

    const/16 v1, 0x24

    if-ne p1, v1, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p1, 0x0

    goto :goto_31

    .line 537
    :cond_30
    :goto_30
    const/4 p1, 0x1

    .line 540
    :goto_31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 541
    invoke-virtual {v1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-ne v2, p1, :cond_48

    return-object v1

    .line 542
    :cond_48
    goto :goto_35

    .line 543
    :cond_49
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .registers 5

    .line 573
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 575
    invoke-virtual {v0}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v1

    if-ne v1, p2, :cond_1b

    .line 576
    return-object v0

    .line 578
    :cond_1b
    goto :goto_8

    .line 579
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDynamicSensorList(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object v0

    .line 496
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 497
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 499
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 501
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, p1, :cond_2a

    .line 502
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_2a
    goto :goto_15

    .line 505
    :cond_2b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected abstract greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .registers 5

    .line 468
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 469
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 470
    return-object v1

    .line 472
    :cond_1b
    goto :goto_8

    .line 473
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 435
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 436
    :try_start_7
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 437
    if-nez v2, :cond_3e

    .line 438
    const/4 v2, -0x1

    if-ne p1, v2, :cond_15

    .line 439
    goto :goto_35

    .line 441
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 443
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_33

    .line 444
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_33
    goto :goto_1e

    .line 442
    :cond_34
    move-object v0, v2

    .line 448
    :goto_35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 449
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 451
    :cond_3e
    monitor-exit v1

    .line 452
    return-object v2

    .line 451
    :catchall_40
    move-exception p1

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public whitelist getSensors()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public whitelist initDataInjection(Z)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result p1

    return p1
.end method

.method public blacklist initDataInjection(ZI)Z
    .registers 3

    .line 1908
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result p1

    return p1
.end method

.method protected abstract blacklist initDataInjectionImpl(ZI)Z
.end method

.method public whitelist injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1943
    if-eqz p1, :cond_69

    .line 1946
    if-eqz p2, :cond_60

    .line 1949
    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 1950
    array-length v1, p2

    if-ne v1, v0, :cond_2e

    .line 1955
    const/4 v0, -0x1

    if-lt p3, v0, :cond_26

    const/4 v0, 0x3

    if-gt p3, v0, :cond_26

    .line 1958
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1e

    .line 1961
    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result p1

    return p1

    .line 1959
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative or zero sensor timestamp"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1956
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid sensor accuracy"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1951
    :cond_2e
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Wrong number of values for sensor "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 1952
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " actual="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " expected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1947
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sensor data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1944
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sensor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public whitelist isDynamicSensorDiscoverySupported()Z
    .registers 2

    .line 1063
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 3

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1021
    return-void
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3

    .line 1039
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    .line 1040
    return-void
.end method

.method protected abstract greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .registers 5

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .registers 12

    .line 822
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 823
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 13

    .line 888
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 889
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .registers 12

    .line 857
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 858
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;I)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p1

    return p1
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;II)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public whitelist requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 3

    .line 1774
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public greylist-max-o setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 2

    .line 2005
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p1

    return p1
.end method

.method protected abstract greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public whitelist unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2

    .line 1053
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    .line 1054
    return-void
.end method

.method protected abstract greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;)V
    .registers 3

    .line 701
    if-nez p1, :cond_3

    .line 702
    return-void

    .line 705
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 706
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3

    .line 683
    if-eqz p1, :cond_9

    if-nez p2, :cond_5

    goto :goto_9

    .line 687
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 688
    return-void

    .line 684
    :cond_9
    :goto_9
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 643
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 644
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 662
    return-void
.end method

.method protected abstract greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
