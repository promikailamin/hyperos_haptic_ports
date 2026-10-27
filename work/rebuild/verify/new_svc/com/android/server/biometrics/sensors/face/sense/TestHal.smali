.class public Lcom/android/server/biometrics/sensors/face/sense/TestHal;
.super Lvendor/aospa/biometrics/face/ISenseService$Stub;
.source "TestHal.java"


# instance fields
.field public mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public final mSensorId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 51
    invoke-direct {p0}, Lvendor/aospa/biometrics/face/ISenseService$Stub;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mContext:Landroid/content/Context;

    .line 53
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mSensorId:I

    return-void
.end method


# virtual methods
.method public authenticate(J)V
    .registers 3

    .line 136
    const-string p0, "face.hidl.TestHal"

    const-string p1, "authenticate"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancel()V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 98
    invoke-interface {p0, v0, v0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onError(II)V

    :cond_8
    return-void
.end method

.method public enroll([BI[I)V
    .registers 4

    .line 69
    const-string p0, "face.hidl.TestHal"

    const-string p1, "enroll"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enumerate()I
    .registers 3

    .line 104
    const-string v0, "face.hidl.TestHal"

    const-string v1, "enumerate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 106
    new-array v1, v0, [I

    invoke-interface {p0, v1, v0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onEnumerate([II)V

    :cond_11
    return v0
.end method

.method public generateChallenge(I)J
    .registers 2

    .line 63
    const-string p0, "face.hidl.TestHal"

    const-string p1, "generateChallenge"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getAuthenticatorId()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFeature(II)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureCount()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public remove(I)V
    .registers 5

    .line 113
    const-string v0, "face.hidl.TestHal"

    const-string/jumbo v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    if-eqz v0, :cond_56

    if-nez p1, :cond_4d

    .line 116
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mUserId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_2a

    .line 118
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    const/4 p1, 0x6

    invoke-interface {p0, p1, v1}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onError(II)V

    return-void

    .line 121
    :cond_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 122
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 123
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 124
    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 127
    :cond_45
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mUserId:I

    invoke-interface {p1, v0, p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onRemoved([II)V

    return-void

    .line 129
    :cond_4d
    filled-new-array {p1}, [I

    move-result-object p1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mUserId:I

    invoke-interface {v0, p1, p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onRemoved([II)V

    :cond_56
    return-void
.end method

.method public resetLockout([B)V
    .registers 2

    .line 141
    const-string p0, "face.hidl.TestHal"

    const-string/jumbo p1, "resetLockout"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public revokeChallenge()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Lvendor/aospa/biometrics/face/ISenseServiceReceiver;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->mCallback:Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    return-void
.end method

.method public setFeature(IZ[BI)V
    .registers 5

    .line 0
    return-void
.end method
