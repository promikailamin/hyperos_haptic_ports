.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;
.super Landroid/hardware/biometrics/AuthenticationStateListener$Stub;
.source "AuthenticationPolicyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0}, Landroid/hardware/biometrics/AuthenticationStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V
    .registers 4

    .line 235
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "AuthenticationStateListener#onAuthenticationError"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V
    .registers 4

    .line 242
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "AuthenticationStateListener#onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V
    .registers 4

    .line 258
    invoke-static {}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 259
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "AuthenticationStateListener#onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_d
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$2;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
