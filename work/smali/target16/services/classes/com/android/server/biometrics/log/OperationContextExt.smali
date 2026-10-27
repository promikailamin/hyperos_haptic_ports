.class public Lcom/android/server/biometrics/log/OperationContextExt;
.super Ljava/lang/Object;
.source "OperationContextExt.java"


# instance fields
.field public final mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

.field public mDockState:I

.field public mFoldState:I

.field public final mIsBP:Z

.field public mIsDisplayOn:Z

.field public final mIsMandatoryBiometrics:Z

.field public mOrientation:I

.field public mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 49
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 50
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    .line 51
    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 77
    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 78
    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    .line 79
    iput-boolean p4, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    const/4 p0, 0x2

    if-ne p3, p0, :cond_21

    .line 82
    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;-><init>()V

    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->fingerprintOperationState(Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    return-void

    :cond_21
    const/16 p0, 0x8

    if-ne p3, p0, :cond_30

    .line 85
    new-instance p0, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/OperationState$FaceOperationState;-><init>()V

    invoke-static {p0}, Landroid/hardware/biometrics/common/OperationState;->faceOperationState(Landroid/hardware/biometrics/common/OperationState$FaceOperationState;)Landroid/hardware/biometrics/common/OperationState;

    move-result-object p0

    iput-object p0, p1, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    :cond_30
    return-void
.end method

.method public constructor <init>(ZIZ)V
    .registers 5

    .line 66
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5

    .line 61
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    return-void
.end method

.method public static toAidlDisplayState(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public static toAidlFoldState(I)I
    .registers 2

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v0
.end method


# virtual methods
.method public final getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .registers 2

    .line 167
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAuthenticateReason()I

    move-result p0

    packed-switch p0, :pswitch_data_20

    const/4 p0, 0x0

    return p0

    :pswitch_9
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x9

    return p0

    :pswitch_f
    const/16 p0, 0x8

    return p0

    :pswitch_12
    const/4 p0, 0x7

    return p0

    :pswitch_14
    const/4 p0, 0x6

    return p0

    :pswitch_16
    const/4 p0, 0x5

    return p0

    :pswitch_18
    const/4 p0, 0x4

    return p0

    :pswitch_1a
    const/4 p0, 0x3

    return p0

    :pswitch_1c
    const/4 p0, 0x2

    return p0

    :pswitch_1e
    const/4 p0, 0x1

    return p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public final getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getDockState()I
    .registers 1

    .line 281
    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    return p0
.end method

.method public getFoldState()I
    .registers 1

    .line 286
    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    return p0
.end method

.method public getIsMandatoryBiometrics()Z
    .registers 1

    .line 302
    iget-boolean p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    return p0
.end method

.method public getOrderAndIncrement()I
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p0, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getOrderAndIncrement()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 292
    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return p0
.end method

.method public getReason()B
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-byte p0, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return p0
.end method

.method public getWakeReason()I
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    return p0
.end method

.method public final getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .registers 4

    .line 195
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getWakeReason()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_26

    const/4 p1, 0x4

    if-eq p0, p1, :cond_24

    const/16 v0, 0xa

    const/4 v1, 0x6

    if-eq p0, v0, :cond_23

    if-eq p0, v1, :cond_21

    const/4 v0, 0x7

    if-eq p0, v0, :cond_20

    packed-switch p0, :pswitch_data_28

    const/4 p0, 0x0

    return p0

    :pswitch_19
    const/16 p0, 0x9

    return p0

    :pswitch_1c
    const/16 p0, 0x8

    return p0

    :pswitch_1f
    return v0

    :cond_20
    return p1

    :cond_21
    const/4 p0, 0x3

    return p0

    :cond_23
    return v1

    :cond_24
    const/4 p0, 0x2

    return p0

    :cond_26
    return p1

    nop

    :pswitch_data_28
    .packed-switch 0xf
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
    .end packed-switch
.end method

.method public final getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAod()Z
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean p0, p0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    return p0
.end method

.method public isCrypto()Z
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean p0, p0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    return p0
.end method

.method public isDisplayOn()Z
    .registers 1

    .line 260
    iget-boolean p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    return p0
.end method

.method public final setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 3

    .line 356
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    if-eqz v0, :cond_1a

    .line 357
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p1, :cond_30

    .line 359
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 360
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x1

    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    .line 364
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p1, :cond_30

    .line 366
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 367
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x2

    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    .line 373
    :cond_30
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    .line 374
    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void
.end method

.method public toAidlContext()Landroid/hardware/biometrics/common/OperationContext;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public toAidlContext(Landroid/hardware/biometrics/AuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .registers 3

    .line 118
    instance-of v0, p1, Landroid/hardware/face/FaceAuthenticateOptions;

    if-eqz v0, :cond_b

    .line 119
    check-cast p1, Landroid/hardware/face/FaceAuthenticateOptions;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext(Landroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    return-object p0

    .line 121
    :cond_b
    instance-of v0, p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    if-eqz v0, :cond_16

    .line 122
    check-cast p1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlContext(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object p0

    return-object p0

    .line 124
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Authenticate options are invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toAidlContext(Landroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 140
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public toAidlContext(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .registers 4

    .line 152
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 154
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->vendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    goto :goto_1f

    .line 157
    :cond_13
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    .line 160
    :goto_1f
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    .line 162
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public update(Lcom/android/server/biometrics/log/BiometricContext;Z)Lcom/android/server/biometrics/log/OperationContextExt;
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    .line 308
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDisplayState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlDisplayState(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    .line 309
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getFoldState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlFoldState(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->foldState:I

    .line 310
    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-boolean p2, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    .line 312
    iget-object p2, v0, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getTag()I

    move-result p2

    if-nez p2, :cond_3c

    .line 314
    iget-object p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object p2, p2, Landroid/hardware/biometrics/common/OperationContext;->operationState:Landroid/hardware/biometrics/common/OperationState;

    invoke-virtual {p2}, Landroid/hardware/biometrics/common/OperationState;->getFingerprintOperationState()Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;

    move-result-object p2

    .line 315
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isHardwareIgnoringTouches()Z

    move-result v0

    iput-boolean v0, p2, Landroid/hardware/biometrics/common/OperationState$FingerprintOperationState;->isHardwareIgnoringTouches:Z

    .line 317
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 319
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isDisplayOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    .line 320
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDockedState()I

    move-result p2

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    .line 321
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getFoldState()I

    move-result p2

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    .line 322
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getCurrentRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return-object p0
.end method
