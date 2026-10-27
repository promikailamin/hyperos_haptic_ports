.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallingUid:I

.field public mListener:Landroid/hardware/ISensorPrivacyListener;

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/hardware/ISensorPrivacyListener;I)V
    .registers 4

    .line 1910
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1911
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    .line 1912
    iput p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mCallingUid:I

    .line 1914
    :try_start_9
    invoke-interface {p2}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1921
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1922
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 1923
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->-$$Nest$fgetmNumberOfListenersPerUid(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mCallingUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1924
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->-$$Nest$fgetmNumberOfToggleListenersPerUid(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;)Landroid/util/SparseIntArray;

    move-result-object v0

    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mCallingUid:I

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$DeathRecipient;->mListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
