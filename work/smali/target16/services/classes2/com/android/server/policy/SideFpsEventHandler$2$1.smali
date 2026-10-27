.class public Lcom/android/server/policy/SideFpsEventHandler$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "SideFpsEventHandler.java"


# instance fields
.field public mStateRunnable:Ljava/lang/Runnable;

.field public final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$2;


# direct methods
.method public static synthetic $r8$lambda$2Z8YasxHwjxZPJBjRbjZMLyVMbE(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1;->lambda$onStateChanged$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStateChanged$0(I)V
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    return-void
.end method

.method public onBiometricAction(I)V
    .registers 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBiometricAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SideFpsEventHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmAccessibilityManager(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmAccessibilityManager(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 245
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    const-string p1, "mTurnOffDialog"

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$mdismissDialog(Lcom/android/server/policy/SideFpsEventHandler;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public onStateChanged(I)V
    .registers 5

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SideFpsEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2b

    .line 216
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    :cond_2b
    if-nez p1, :cond_4d

    .line 224
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    .line 231
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p1, p1, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    const-string p1, "STATE_IDLE"

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$mdismissDialog(Lcom/android/server/policy/SideFpsEventHandler;Ljava/lang/String;)V

    return-void

    .line 235
    :cond_4d
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    return-void
.end method
