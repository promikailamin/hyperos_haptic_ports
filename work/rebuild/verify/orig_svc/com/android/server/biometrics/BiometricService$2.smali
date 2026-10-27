.class public Lcom/android/server/biometrics/BiometricService$2;
.super Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;
.source "BiometricService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public static synthetic $r8$lambda$K0ILmnQEKPKaUlvxg0jxO3Y60Vg(Lcom/android/server/biometrics/BiometricService$2;JI[B)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDialogDismissed$0(JI[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$VOsxKRErQpc1XlZENTZDfDEeRpQ(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onResumeAuthentication$7(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YE-YiQ2saRCvTqBcqXv1K20IKxk(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onTryAgainPressed$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Y-P01wjFiqXJdlSB6aFli93iII(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onPauseAuthentication$6(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$dAwBQ9IdKRHcMUf5kKkOeHbIaFY(Lcom/android/server/biometrics/BiometricService$2;JZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDialogAnimatedIn$4(JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$egHlFA_cl45l_2nvE38HnjDNbwo(Lcom/android/server/biometrics/BiometricService$2;JI)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onSystemEvent$3(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$j_t6Ey5wcRnsbf1pRuO4yfSV4gE(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onStartFingerprintNow$5(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$n1OqD-ty-MTorR4049bVbZ6tG7Y(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDeviceCredentialPressed$2(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 4

    .line 853
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onDeviceCredentialPressed$2(J)V
    .registers 3

    .line 867
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public final synthetic lambda$onDialogAnimatedIn$4(JZ)V
    .registers 4

    .line 877
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;JZ)V

    return-void
.end method

.method public final synthetic lambda$onDialogDismissed$0(JI[B)V
    .registers 5

    .line 857
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V

    return-void
.end method

.method public final synthetic lambda$onPauseAuthentication$6(J)V
    .registers 3

    .line 887
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnPauseAuthentication(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public final synthetic lambda$onResumeAuthentication$7(J)V
    .registers 3

    .line 892
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnResumeAuthentication(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public final synthetic lambda$onStartFingerprintNow$5(J)V
    .registers 3

    .line 882
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnStartFingerprintNow(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public final synthetic lambda$onSystemEvent$3(JI)V
    .registers 4

    .line 872
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method public final synthetic lambda$onTryAgainPressed$1(J)V
    .registers 3

    .line 862
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method public onDeviceCredentialPressed()V
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDialogAnimatedIn(Z)V
    .registers 6

    .line 877
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 10

    .line 857
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPauseAuthentication()V
    .registers 5

    .line 887
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResumeAuthentication()V
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartFingerprintNow()V
    .registers 5

    .line 882
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemEvent(I)V
    .registers 6

    .line 872
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTryAgainPressed()V
    .registers 5

    .line 862
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
