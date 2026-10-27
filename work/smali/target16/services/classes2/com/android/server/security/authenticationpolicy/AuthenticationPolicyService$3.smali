.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;
.super Landroid/os/Handler;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/os/Looper;)V
    .registers 3

    .line 266
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    return-void

    .line 282
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    .line 283
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportBiometricAuthError(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    return-void

    .line 278
    :cond_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    .line 279
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {p1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportBiometricAuthFailure(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;I)V

    return-void

    .line 274
    :cond_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    .line 275
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportBiometricAuthSuccess(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    return-void

    .line 271
    :cond_31
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$3;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$mhandleReportPrimaryAuthAttempt(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;ZI)V

    return-void
.end method
