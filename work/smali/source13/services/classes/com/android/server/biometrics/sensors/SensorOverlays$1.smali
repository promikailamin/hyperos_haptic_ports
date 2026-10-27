.class Lcom/android/server/biometrics/sensors/SensorOverlays$1;
.super Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;
.source "SensorOverlays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field final synthetic val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/SensorOverlays;

    .line 79
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->this$0:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCanceled()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;->val$client:Lcom/android/server/biometrics/sensors/AcquisitionClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    .line 83
    return-void
.end method
