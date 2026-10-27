.class Lcom/android/server/policy/SideFpsEventHandler$2;
.super Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;
.source "SideFpsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler;->onFingerprintSensorReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;

.field final synthetic val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/SideFpsEventHandler;

    .line 180
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isPowerbuttonFps()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/SideFpsEventHandler$2$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler$2;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$2;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    :cond_1c
    return-void
.end method
