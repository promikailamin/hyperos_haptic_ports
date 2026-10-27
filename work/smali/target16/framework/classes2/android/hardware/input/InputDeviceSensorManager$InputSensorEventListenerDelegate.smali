.class final Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;
.super Landroid/os/Handler;
.source "InputDeviceSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputSensorEventListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mListener:Landroid/hardware/SensorEventListener;

.field private final blacklist mSensorEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Looper;)V
    .registers 4

    .line 259
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 252
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    .line 255
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    .line 260
    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    .line 261
    invoke-virtual {p0, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 262
    return-void
.end method

.method private blacklist getSensorEvent(Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;
    .registers 3

    .line 332
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorEvent;

    return-object p1
.end method

.method static synthetic blacklist lambda$removeSensor$0(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 2

    .line 283
    invoke-static {p1, p0}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist addSensor(Landroid/hardware/Sensor;)V
    .registers 9

    .line 293
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 294
    invoke-static {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding sensor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " already exist!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputDeviceSensorManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 298
    :cond_37
    goto :goto_6

    .line 299
    :cond_38
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    .line 301
    new-instance v1, Landroid/hardware/SensorEvent;

    const-wide/16 v4, 0x0

    new-array v6, v0, [F

    const/4 v3, -0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorEvent;-><init>(Landroid/hardware/Sensor;IJ[F)V

    .line 303
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    return-void
.end method

.method public blacklist getListener()Landroid/hardware/SensorEventListener;
    .registers 2

    .line 325
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method public blacklist getSensors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_41

    .line 365
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/SensorEvent;

    .line 366
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 367
    goto :goto_41

    .line 354
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 355
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 356
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 357
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 358
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getId()I

    move-result v4

    if-ne v4, v0, :cond_3f

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v1, :cond_3f

    .line 359
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v4, v3, p1}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 361
    :cond_3f
    goto :goto_22

    .line 362
    :cond_40
    nop

    .line 370
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist hasSensorRegistered(II)Z
    .registers 6

    .line 313
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 314
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p2, :cond_20

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    if-ne v1, p1, :cond_20

    .line 315
    const/4 p1, 0x1

    return p1

    .line 317
    :cond_20
    goto :goto_6

    .line 318
    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist removeSensor(Landroid/hardware/Sensor;)V
    .registers 4

    .line 278
    if-nez p1, :cond_d

    .line 279
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 280
    iget-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 281
    return-void

    .line 283
    :cond_d
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensors:Ljava/util/List;

    new-instance v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/Sensor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 284
    if-eqz v0, :cond_23

    .line 285
    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->mSensorEvents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 287
    :cond_23
    return-void
.end method

.method public blacklist sendSensorAccuracyChanged(III)V
    .registers 5

    .line 346
    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 348
    return-void
.end method

.method public blacklist sendSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 339
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 340
    return-void
.end method
