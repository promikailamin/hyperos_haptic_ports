.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
.super Ljava/lang/Object;
.source "AidlSession.java"


# instance fields
.field private final mHalInterfaceVersion:I

.field private final mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field private final mSession:Landroid/hardware/biometrics/face/ISession;

.field private final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V
    .registers 5
    .param p1, "halInterfaceVersion"    # I
    .param p2, "session"    # Landroid/hardware/biometrics/face/ISession;
    .param p3, "userId"    # I
    .param p4, "halSessionCallback"    # Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 39
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 40
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 41
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    .line 42
    return-void
.end method


# virtual methods
.method getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    return-object v0
.end method

.method public getSession()Landroid/hardware/biometrics/face/ISession;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    return v0
.end method

.method public hasContextMethods()Z
    .registers 3

    .line 64
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
