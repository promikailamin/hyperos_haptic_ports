.class final Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathRecipient"
.end annotation


# instance fields
.field private mListener:Landroid/hardware/ISensorPrivacyListener;

.field final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;)V
    .registers 4
    .param p2, "listener"    # Landroid/hardware/ISensorPrivacyListener;

    .line 1397
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 1400
    :try_start_7
    invoke-interface {p2}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    .line 1402
    goto :goto_11

    .line 1401
    :catch_10
    move-exception p1

    .line 1403
    :goto_11
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1407
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1408
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_b

    .line 1414
    goto :goto_c

    .line 1413
    :catch_b
    move-exception v0

    .line 1415
    :goto_c
    return-void
.end method
