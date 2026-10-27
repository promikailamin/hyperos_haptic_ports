.class Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
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

    .line 420
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAcquired$4$com-android-server-biometrics-BiometricService$1(JIII)V
    .registers 12
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "acquiredInfo"    # I
    .param p5, "vendorCode"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V

    return-void
.end method

.method synthetic lambda$onAuthenticationFailed$1$com-android-server-biometrics-BiometricService$1(JI)V
    .registers 5
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 429
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method synthetic lambda$onAuthenticationSucceeded$0$com-android-server-biometrics-BiometricService$1(JI[B)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "token"    # [B

    .line 423
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[B)V

    return-void
.end method

.method synthetic lambda$onError$2$com-android-server-biometrics-BiometricService$1(JIIII)V
    .registers 14
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "cookie"    # I
    .param p5, "error"    # I
    .param p6, "vendorCode"    # I

    .line 439
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V

    return-void
.end method

.method synthetic lambda$onError$3$com-android-server-biometrics-BiometricService$1(JIIII)V
    .registers 14
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "cookie"    # I
    .param p5, "error"    # I
    .param p6, "vendorCode"    # I

    .line 442
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V

    return-void
.end method

.method public onAcquired(III)V
    .registers 13
    .param p1, "sensorId"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v8, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 6
    .param p1, "sensorId"    # I

    .line 428
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void
.end method

.method public onAuthenticationSucceeded(I[B)V
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "token"    # [B

    .line 423
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v7, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    return-void
.end method

.method public onError(IIII)V
    .registers 15
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 438
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1a

    .line 439
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v9, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIII)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 442
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v9, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIII)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    :goto_30
    return-void
.end method
