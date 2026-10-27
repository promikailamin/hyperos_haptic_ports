.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;
.super Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub;
.source "SenseProvider.java"


# instance fields
.field public mCallback:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I


# direct methods
.method public static synthetic $r8$lambda$I9NVRE-gn-8xtFE6X6_RFiNExtQ(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;I[B)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onAuthenticated$1(I[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$M7zvoMLEWBqIputhdzsb3kvA4Aw(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;[I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onRemoved$4([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mb5tiLXSckmhKjd1QNRnEkZ8FIU(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onLockoutChanged$6(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$R8WsDoEhuijw-Q-GoY-myL-3MrA(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;III)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onEnrollResult$0(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$WMy8IvxFJBIxDH0Za2lF1MVoDFM(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;[I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onEnumerate$5([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eiZRaGIN8g4iZTdEPKnNPxs1w1U(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onAcquired$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$xmwme0UoBzeSCT_tqu3uOUBeHI0(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->lambda$onError$3(II)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 7

    .line 175
    invoke-direct {p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub;-><init>()V

    .line 176
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mSensorId:I

    .line 177
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    .line 179
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 180
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 181
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAcquired$2(II)V
    .registers 4

    .line 228
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 229
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_26

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAcquired for non-acquire client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 235
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public final synthetic lambda$onAuthenticated$1(I[B)V
    .registers 8

    .line 210
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 211
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v0, :cond_26

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 212
    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 220
    :goto_2d
    new-instance v1, Landroid/hardware/face/Face;

    const-string v2, ""

    const-wide/16 v3, 0x3f0

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 221
    invoke-static {p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseUtils;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, v1, v0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic lambda$onEnrollResult$0(III)V
    .registers 7

    .line 191
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 193
    new-instance v0, Landroid/hardware/face/Face;

    const-wide/16 v1, 0x3f0

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 195
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 196
    instance-of p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;

    if-nez p1, :cond_39

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollResult for non-enroll client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_39
    check-cast p0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;

    .line 203
    invoke-virtual {p0, v0, p3}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public final synthetic lambda$onEnumerate$5([I)V
    .registers 8

    .line 301
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 302
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v0, :cond_26

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 303
    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 308
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 310
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_45

    .line 313
    :goto_2c
    array-length v0, p1

    if-ge v1, v0, :cond_44

    .line 314
    new-instance v0, Landroid/hardware/face/Face;

    aget v2, p1, v1

    const-wide/16 v3, 0x3f0

    const-string v5, ""

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 315
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v0, v2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_44
    return-void

    :cond_45
    const/4 p1, 0x0

    .line 321
    invoke-interface {p0, p1, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public final synthetic lambda$onError$3(II)V
    .registers 6

    .line 244
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_17

    .line 246
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v2, "SenseProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_52

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onError for non-error consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 255
    :cond_52
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 256
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_66

    .line 259
    const-string p1, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;

    if-eqz p0, :cond_66

    .line 261
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;->onHardwareUnavailable()V

    :cond_66
    return-void
.end method

.method public final synthetic lambda$onLockoutChanged$6(J)V
    .registers 6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SenseProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1f

    const/4 p1, 0x0

    goto :goto_32

    :cond_1f
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_31

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, p1, v1

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p1, 0x2

    .line 339
    :goto_32
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->setCurrentUserLockoutMode(I)V

    if-nez v0, :cond_40

    .line 342
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mSensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    :cond_40
    return-void
.end method

.method public final synthetic lambda$onRemoved$4([I)V
    .registers 11

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 271
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    const-string v2, "SenseProvider"

    if-nez v1, :cond_26

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onRemoved for non-removal consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 277
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 279
    array-length v1, p1

    const/4 v3, 0x0

    if-lez v1, :cond_61

    move v1, v3

    .line 282
    :goto_2d
    array-length v4, p1

    if-ge v1, v4, :cond_65

    .line 283
    aget v4, p1, v1

    .line 284
    new-instance v5, Landroid/hardware/face/Face;

    const-string v6, ""

    const-wide/16 v7, 0x3f0

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 285
    array-length v6, p1

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed, faceId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remaining: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v0, v5, v6}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_61
    const/4 p1, 0x0

    .line 290
    invoke-interface {v0, p1, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 293
    :cond_65
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_unlock_re_enroll"

    const/4 v0, -0x2

    invoke-static {p0, p1, v3, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onAcquired(III)V
    .registers 5

    .line 227
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(II[B)V
    .registers 5

    .line 209
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;I[B)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(III)V
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate([II)V
    .registers 4

    .line 300
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;[I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(II)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved([II)V
    .registers 4

    .line 269
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;[I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;

    return-void
.end method
