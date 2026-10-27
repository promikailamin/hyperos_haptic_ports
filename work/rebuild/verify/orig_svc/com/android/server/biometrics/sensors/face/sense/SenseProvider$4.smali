.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;)V
    .registers 3

    .line 591
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAction(I)V
    .registers 2

    .line 599
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onBiometricAction(I)V

    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_16

    .line 608
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    :cond_16
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2

    .line 594
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
