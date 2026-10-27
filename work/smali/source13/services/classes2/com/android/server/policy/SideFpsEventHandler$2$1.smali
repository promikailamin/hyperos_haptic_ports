.class Lcom/android/server/policy/SideFpsEventHandler$2$1;
.super Landroid/hardware/biometrics/BiometricStateListener;
.source "SideFpsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler$2;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStateRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$2;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/policy/SideFpsEventHandler$2;

    .line 186
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricStateListener;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method synthetic lambda$onStateChanged$0$com-android-server-policy-SideFpsEventHandler$2$1(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 202
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 6
    .param p1, "newState"    # I

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    .line 201
    :cond_14
    if-nez p1, :cond_2d

    .line 202
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/SideFpsEventHandler$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2$1;I)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    .line 203
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->mStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_34

    .line 206
    :cond_2d
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V

    .line 208
    :goto_34
    return-void
.end method
