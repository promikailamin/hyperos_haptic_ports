.class public Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;
.super Ljava/lang/Object;
.source "AuthenticationPolicyService.java"

# interfaces
.implements Lcom/android/server/locksettings/LockSettingsStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFailed(I)V
    .registers 4

    .line 222
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "LockSettingsStateListener#onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 224
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .registers 4

    .line 213
    invoke-static {}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    const-string v0, "AuthenticationPolicyService"

    const-string v1, "LockSettingsStateListener#onAuthenticationSucceeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_d
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService$1;->this$0:Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-static {p0}, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;->-$$Nest$fgetmHandler(Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
