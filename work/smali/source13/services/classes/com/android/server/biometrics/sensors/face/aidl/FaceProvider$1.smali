.class Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->lambda$scheduleEnroll$5$com-android-server-biometrics-sensors-face-aidl-FaceProvider(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;I[BLjava/lang/String;J[ILandroid/view/Surface;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field final synthetic val$sensorId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 362
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 6
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 366
    if-eqz p2, :cond_14

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$sensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$1;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    .line 370
    :cond_14
    return-void
.end method
