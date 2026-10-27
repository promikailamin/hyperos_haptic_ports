.class Lcom/android/server/biometrics/sensors/BiometricScheduler$1;
.super Ljava/lang/Object;
.source "BiometricScheduler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BiometricScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 168
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClientFinished$0$com-android-server-biometrics-sensors-BiometricScheduler$1(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 7
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmSensorType(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetIS_POWERFP(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 197
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setInterceptPowerKeyAuthOrEnroll(Z)V

    .line 201
    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const-string v2, "[Finishing] "

    if-nez v0, :cond_4c

    .line 202
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but current operation is null, success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", possible lifecycle bug in clientMonitor implementation?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 208
    :cond_4c
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Ignoring Finish] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz v0, :cond_bb

    .line 216
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmCoexCoordinator(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmSensorType(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v2

    move-object v3, p1

    check-cast v3, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->removeAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V

    .line 220
    :cond_bb
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 221
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmGestureAvailabilityDispatcher(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 222
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getSensorId()I

    move-result v2

    .line 221
    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 225
    :cond_d4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmRecentOperations(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmRecentOperationsLimit(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v2

    if-lt v0, v2, :cond_ef

    .line 226
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmRecentOperations(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    :cond_ef
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmRecentOperations(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getProtoEnum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 230
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmTotalOperationsHandled(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fputmTotalOperationsHandled(Lcom/android/server/biometrics/sensors/BiometricScheduler;I)V

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    .line 232
    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 5
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler$1;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 8
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Started] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_54

    .line 175
    move-object v0, p1

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 176
    .local v0, "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmSensorType(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v3

    if-ne v3, v2, :cond_42

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetIS_POWERFP(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-nez v3, :cond_42

    .line 177
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setInterceptPowerKeyAuthOrEnroll(Z)V

    .line 180
    :cond_42
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmCoexCoordinator(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmSensorType(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v4

    move-object v5, p1

    check-cast v5, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->addAuthenticationClient(ILcom/android/server/biometrics/sensors/AuthenticationClient;)V

    .line 183
    .end local v0    # "authClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;
    :cond_54
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v0, :cond_6f

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetmSensorType(Lcom/android/server/biometrics/sensors/BiometricScheduler;)I

    move-result v0

    if-ne v0, v2, :cond_6f

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->-$$Nest$fgetIS_POWERFP(Lcom/android/server/biometrics/sensors/BiometricScheduler;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 186
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setInterceptPowerKeyAuthOrEnroll(Z)V

    .line 190
    :cond_6f
    return-void
.end method
