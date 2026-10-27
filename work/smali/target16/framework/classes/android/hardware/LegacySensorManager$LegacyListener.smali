.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private greylist-max-o mSensors:I

.field private greylist-max-o mTarget:Landroid/hardware/SensorListener;

.field private greylist-max-o mValues:[F

.field private final greylist-max-o mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor greylist-max-o <init>(Landroid/hardware/SensorListener;)V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 210
    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    .line 213
    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    .line 214
    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 215
    return-void
.end method

.method private static greylist-max-o getLegacySensorType(I)I
    .registers 1

    .line 355
    packed-switch p0, :pswitch_data_10

    .line 365
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 363
    :pswitch_5
    const/4 p0, 0x4

    return p0

    .line 361
    :pswitch_7
    const/16 p0, 0x80

    return p0

    .line 359
    :pswitch_a
    const/16 p0, 0x8

    return p0

    .line 357
    :pswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o hasOrientationSensor(I)Z
    .registers 1

    .line 245
    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private greylist-max-o mapSensorDataToWindow(I[FI)V
    .registers 11

    .line 289
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 290
    const/4 v2, 0x1

    aget v3, p2, v2

    .line 291
    const/4 v4, 0x2

    aget v5, p2, v4

    .line 293
    sparse-switch p1, :sswitch_data_70

    goto :goto_16

    .line 304
    :sswitch_d
    neg-float v1, v1

    .line 305
    neg-float v3, v3

    goto :goto_16

    .line 299
    :sswitch_10
    neg-float v1, v1

    .line 300
    neg-float v3, v3

    .line 301
    neg-float v5, v5

    .line 302
    goto :goto_16

    .line 296
    :sswitch_14
    neg-float v5, v5

    .line 297
    nop

    .line 308
    :goto_16
    aput v1, p2, v0

    .line 309
    aput v3, p2, v2

    .line 310
    aput v5, p2, v4

    .line 311
    const/4 v6, 0x3

    aput v1, p2, v6

    .line 312
    const/4 v6, 0x4

    aput v3, p2, v6

    .line 313
    const/4 v6, 0x5

    aput v5, p2, v6

    .line 315
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_48

    .line 317
    sparse-switch p1, :sswitch_data_82

    goto :goto_48

    .line 320
    :sswitch_2d
    neg-float v3, v3

    aput v3, p2, v0

    .line 321
    aput v1, p2, v2

    .line 322
    aput v5, p2, v4

    .line 323
    goto :goto_48

    .line 326
    :sswitch_35
    const/high16 v6, 0x43870000    # 270.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3e

    const/16 v6, 0x5a

    goto :goto_40

    :cond_3e
    const/16 v6, -0x10e

    :goto_40
    int-to-float v6, v6

    add-float/2addr v1, v6

    aput v1, p2, v0

    .line 327
    aput v5, p2, v2

    .line 328
    aput v3, p2, v4

    .line 332
    :cond_48
    :goto_48
    and-int/2addr p3, v4

    if-eqz p3, :cond_6f

    .line 333
    aget p3, p2, v0

    .line 334
    aget v1, p2, v2

    .line 335
    aget v3, p2, v4

    .line 337
    sparse-switch p1, :sswitch_data_94

    goto :goto_6f

    .line 340
    :sswitch_55
    neg-float p1, p3

    aput p1, p2, v0

    .line 341
    neg-float p1, v1

    aput p1, p2, v2

    .line 342
    aput v3, p2, v4

    .line 343
    goto :goto_6f

    .line 346
    :sswitch_5e
    const/high16 p1, 0x43340000    # 180.0f

    cmpl-float v5, p3, p1

    if-ltz v5, :cond_66

    sub-float/2addr p3, p1

    goto :goto_67

    :cond_66
    add-float/2addr p3, p1

    :goto_67
    aput p3, p2, v0

    .line 347
    neg-float p1, v1

    aput p1, p2, v2

    .line 348
    neg-float p1, v3

    aput p1, p2, v4

    .line 352
    :cond_6f
    :goto_6f
    return-void

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_10
        0x8 -> :sswitch_d
        0x80 -> :sswitch_14
    .end sparse-switch

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_35
        0x2 -> :sswitch_2d
        0x8 -> :sswitch_2d
        0x80 -> :sswitch_35
    .end sparse-switch

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_5e
        0x2 -> :sswitch_55
        0x8 -> :sswitch_55
        0x80 -> :sswitch_5e
    .end sparse-switch
.end method


# virtual methods
.method greylist-max-o hasSensors()Z
    .registers 2

    .line 241
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 4

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result p1

    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_d
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_d} :catch_e

    .line 255
    goto :goto_f

    .line 252
    :catch_e
    move-exception p1

    .line 256
    :goto_f
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 259
    iget-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    .line 260
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 261
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    .line 262
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    aput v1, v0, v4

    .line 263
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 264
    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v4

    .line 265
    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v5

    invoke-direct {p0, v4, v0, v5}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    .line 266
    const/4 v5, 0x3

    if-ne v1, v5, :cond_4e

    .line 267
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-eqz v1, :cond_37

    .line 268
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 270
    :cond_37
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_53

    .line 271
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget p1, v0, v2

    invoke-virtual {v1, v4, v5, p1}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result p1

    aput p1, v0, v2

    .line 272
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p1, v3, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_53

    .line 275
    :cond_4e
    iget-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {p1, v4, v0}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    .line 277
    :cond_53
    :goto_53
    return-void
.end method

.method greylist-max-o registerSensor(I)Z
    .registers 5

    .line 218
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 219
    return v1

    .line 221
    :cond_7
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    .line 222
    iget v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 223
    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 224
    return v1

    .line 226
    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method greylist-max-o unregisterSensor(I)Z
    .registers 5

    .line 230
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 231
    return v1

    .line 233
    :cond_7
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    not-int v2, p1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    .line 234
    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 235
    return v1

    .line 237
    :cond_1c
    const/4 p1, 0x1

    return p1
.end method
