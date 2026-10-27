.class public Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;
.super Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.source "HidlToAidlCallbackConverter.java"


# instance fields
.field public final mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    return-void
.end method


# virtual methods
.method public onAcquired(JIII)V
    .registers 6

    .line 65
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 7

    const/4 p1, 0x0

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    goto :goto_6

    :cond_5
    move p2, p1

    .line 48
    :goto_6
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [B

    .line 50
    :goto_c
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_21

    .line 51
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_21
    if-eqz p2, :cond_2d

    .line 55
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    .line 56
    invoke-static {p4}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    return-void

    .line 58
    :cond_2d
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public onChallengeGenerated(J)V
    .registers 3

    .line 97
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeGenerated(J)V

    return-void
.end method

.method public onChallengeRevoked(J)V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onChallengeRevoked(J)V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 6

    .line 41
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p3, p5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentProgress(II)V

    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .registers 5

    .line 84
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 85
    :goto_7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1c

    .line 86
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 88
    :cond_1c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public onError(JIII)V
    .registers 6

    .line 70
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onError(II)V

    return-void
.end method

.method public onFeatureGet([B)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onFeaturesRetrieved([B)V

    return-void
.end method

.method public onFeatureSet(B)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onFeatureSet(B)V

    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 3

    .line 93
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onLockoutChanged(J)V

    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .registers 5

    .line 75
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 p2, 0x0

    .line 76
    :goto_7
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1c

    .line 77
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aput p4, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 79
    :cond_1c
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public onUnsupportedClientScheduled()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlCallbackConverter;->mAidlResponseHandler:Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->onUnsupportedClientScheduled()V

    return-void
.end method
