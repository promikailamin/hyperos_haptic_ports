.class final Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IInputSensorEventListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    .registers 4
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 3756
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3757
    iput p2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    .line 3758
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    .line 3759
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 3766
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->-$$Nest$monSensorEventListenerDied(Lcom/android/server/input/InputManagerService;I)V

    .line 3767
    return-void
.end method

.method public getListener()Landroid/hardware/input/IInputSensorEventListener;
    .registers 2

    .line 3770
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    return-object v0
.end method

.method public notifySensorAccuracy(III)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I

    .line 3787
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorAccuracyChanged(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3792
    goto :goto_2a

    .line 3788
    :catch_6
    move-exception v0

    .line 3789
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that sensor accuracy notified, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3791
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    .line 3793
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method public notifySensorEvent(IIIJ[F)V
    .registers 14
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J
    .param p6, "values"    # [F

    .line 3776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorChanged(IIIJ[F)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 3782
    goto :goto_2f

    .line 3778
    :catch_b
    move-exception v0

    .line 3779
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that sensor event notified, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3781
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    .line 3783
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method
