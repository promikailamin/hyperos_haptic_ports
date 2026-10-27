.class public Lcom/android/server/biometrics/BiometricService$SettingObserver$2;
.super Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;
.source "BiometricService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field public final synthetic val$faceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$SettingObserver;Landroid/hardware/face/FaceManager;)V
    .registers 3

    .line 749
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->this$0:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->val$faceManager:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .registers 4

    if-eqz p1, :cond_20

    .line 753
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_20

    :cond_9
    const/4 v0, 0x0

    .line 758
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 759
    iget v0, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 761
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SettingObserver$2;->val$faceManager:Landroid/hardware/face/FaceManager;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver$2$1;-><init>(Lcom/android/server/biometrics/BiometricService$SettingObserver$2;Landroid/hardware/face/FaceSensorPropertiesInternal;)V

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    :cond_1f
    return-void

    .line 754
    :cond_20
    :goto_20
    const-string p0, "BiometricService"

    const-string p1, "No face authenticators registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
