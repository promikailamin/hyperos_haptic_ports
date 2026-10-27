.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 98
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .registers 5
    .param p1, "newUserId"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmProvider(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 103
    return-void
.end method
