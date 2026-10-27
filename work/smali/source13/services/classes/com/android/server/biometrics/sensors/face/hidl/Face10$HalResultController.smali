.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalResultController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "scheduler"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .param p5, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 175
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;-><init>()V

    .line 176
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    .line 177
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    .line 179
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 180
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 181
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 182
    return-void
.end method


# virtual methods
.method synthetic lambda$onAcquired$2$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(II)V
    .registers 7
    .param p1, "vendorCode"    # I
    .param p2, "acquiredInfo"    # I

    .line 233
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 234
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    const-string v2, "Face10"

    if-nez v1, :cond_28

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAcquired for non-acquire client: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 236
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 244
    :cond_28
    const/16 v1, 0x1da3

    if-ne p1, v1, :cond_36

    .line 245
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    .line 246
    const-string v1, "Receive reset mCanNextFaceInputStep tag"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    :cond_36
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    if-eqz v1, :cond_78

    .line 250
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmCanNextFaceInputStep()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 251
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 253
    .local v1, "acquisitionClient":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    invoke-virtual {v1, p2, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 255
    const/16 v2, 0x13

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4e

    .line 256
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    .line 259
    :cond_4e
    const/16 v2, 0x24

    if-ne p1, v2, :cond_55

    .line 260
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    .line 262
    .end local v1    # "acquisitionClient":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    :cond_55
    goto :goto_7e

    .line 263
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCanNextFaceInputStep false, skip this Acquired: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", vendorCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 266
    :cond_78
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 268
    .restart local v1    # "acquisitionClient":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    invoke-virtual {v1, p2, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 271
    .end local v1    # "acquisitionClient":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    :goto_7e
    return-void
.end method

.method synthetic lambda$onAuthenticated$1$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(IJLjava/util/ArrayList;)V
    .registers 10
    .param p1, "faceId"    # I
    .param p2, "deviceId"    # J
    .param p4, "token"    # Ljava/util/ArrayList;

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 215
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_28

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 223
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    if-eqz p1, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 224
    .local v2, "authenticated":Z
    :goto_30
    new-instance v3, Landroid/hardware/face/Face;

    const-string v4, ""

    invoke-direct {v3, v4, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 225
    .local v3, "face":Landroid/hardware/face/Face;
    invoke-interface {v1, v3, v2, p4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 226
    return-void
.end method

.method synthetic lambda$onEnrollResult$0$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(IIJI)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "faceId"    # I
    .param p3, "deviceId"    # J
    .param p5, "remaining"    # I

    .line 191
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    .local v0, "name":Ljava/lang/CharSequence;
    new-instance v1, Landroid/hardware/face/Face;

    invoke-direct {v1, v0, p2, p3, p4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 195
    .local v1, "face":Landroid/hardware/face/Face;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    .line 196
    .local v2, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    if-nez v3, :cond_39

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnrollResult for non-enroll client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "Face10"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 203
    :cond_39
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->stopGetFrame()V

    .line 205
    move-object v3, v2

    check-cast v3, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    .line 206
    .local v3, "enrollClient":Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;
    invoke-virtual {v3, v1, p5}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 207
    return-void
.end method

.method synthetic lambda$onEnumerate$5$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(Ljava/util/ArrayList;J)V
    .registers 10
    .param p1, "faceIds"    # Ljava/util/ArrayList;
    .param p2, "deviceId"    # J

    .line 337
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 338
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_28

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 344
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 346
    .local v1, "enumerateConsumer":Lcom/android/server/biometrics/sensors/EnumerateConsumer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 350
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, ""

    invoke-direct {v3, v5, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 351
    .local v3, "face":Landroid/hardware/face/Face;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 349
    .end local v3    # "face":Landroid/hardware/face/Face;
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .end local v2    # "i":I
    :cond_56
    goto :goto_5c

    .line 357
    :cond_57
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 359
    :goto_5c
    return-void
.end method

.method synthetic lambda$onError$3$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(II)V
    .registers 7
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 278
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_5b

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError for non-error consumer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 289
    :cond_5b
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->stopGetFrame()V

    .line 291
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 292
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 294
    const/4 v3, 0x1

    if-ne p1, v3, :cond_77

    .line 295
    const-string v3, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    if-eqz v2, :cond_77

    .line 297
    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;->onHardwareUnavailable()V

    .line 300
    :cond_77
    return-void
.end method

.method synthetic lambda$onLockoutChanged$6$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(J)V
    .registers 7
    .param p1, "duration"    # J

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_21

    .line 368
    const/4 v2, 0x0

    .local v2, "lockoutMode":I
    goto :goto_34

    .line 369
    .end local v2    # "lockoutMode":I
    :cond_21
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_33

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_31

    goto :goto_33

    .line 372
    :cond_31
    const/4 v2, 0x1

    .restart local v2    # "lockoutMode":I
    goto :goto_34

    .line 370
    .end local v2    # "lockoutMode":I
    :cond_33
    :goto_33
    const/4 v2, 0x2

    .line 375
    .restart local v2    # "lockoutMode":I
    :goto_34
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->setCurrentUserLockoutMode(I)V

    .line 377
    cmp-long v0, p1, v0

    if-nez v0, :cond_44

    .line 378
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 380
    :cond_44
    return-void
.end method

.method synthetic lambda$onRemoved$4$com-android-server-biometrics-sensors-face-hidl-Face10$HalResultController(Ljava/util/ArrayList;J)V
    .registers 14
    .param p1, "removed"    # Ljava/util/ArrayList;
    .param p2, "deviceId"    # J

    .line 306
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 307
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    const-string v2, "Face10"

    if-nez v1, :cond_28

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoved for non-removal consumer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 313
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 315
    .local v1, "removalConsumer":Lcom/android/server/biometrics/sensors/RemovalConsumer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_78

    .line 318
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_77

    .line 319
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 320
    .local v5, "id":I
    new-instance v6, Landroid/hardware/face/Face;

    const-string v7, ""

    invoke-direct {v6, v7, v5, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 321
    .local v6, "face":Landroid/hardware/face/Face;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    .line 322
    .local v7, "remaining":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed, faceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 318
    .end local v5    # "id":I
    .end local v6    # "face":Landroid/hardware/face/Face;
    .end local v7    # "remaining":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .end local v3    # "i":I
    :cond_77
    goto :goto_7c

    .line 326
    :cond_78
    const/4 v2, 0x0

    invoke-interface {v1, v2, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 329
    :goto_7c
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v5, "face_unlock_re_enroll"

    invoke-static {v2, v5, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 331
    return-void
.end method

.method public onAcquired(JIII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "userId"    # I
    .param p4, "acquiredInfo"    # I
    .param p5, "vendorCode"    # I

    .line 232
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p5, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 14
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p5, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-wide v4, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .param p5, "remaining"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 336
    .local p3, "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method

.method public onError(JIII)V
    .registers 8
    .param p1, "deviceId"    # J
    .param p3, "userId"    # I
    .param p4, "error"    # I
    .param p5, "vendorCode"    # I

    .line 276
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 5
    .param p1, "duration"    # J

    .line 364
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 305
    .local p3, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    .line 185
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    .line 186
    return-void
.end method
