.class Lcom/android/server/biometrics/BiometricService$2;
.super Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;->createSysuiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field final synthetic val$requestId:J


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;

    .line 456
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDeviceCredentialPressed$2$com-android-server-biometrics-BiometricService$2(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 470
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method synthetic lambda$onDialogAnimatedIn$4$com-android-server-biometrics-BiometricService$2(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 480
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method synthetic lambda$onDialogDismissed$0$com-android-server-biometrics-BiometricService$2(JI[B)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "reason"    # I
    .param p4, "credentialAttestation"    # [B

    .line 460
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V

    return-void
.end method

.method synthetic lambda$onSystemEvent$3$com-android-server-biometrics-BiometricService$2(JI)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "event"    # I

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method synthetic lambda$onTryAgainPressed$1$com-android-server-biometrics-BiometricService$2(J)V
    .registers 4
    .param p1, "requestId"    # J

    .line 465
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public onDeviceCredentialPressed()V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 11
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 460
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v7, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public onSystemEvent(I)V
    .registers 6
    .param p1, "event"    # I

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method

.method public onTryAgainPressed()V
    .registers 5

    .line 465
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    return-void
.end method
