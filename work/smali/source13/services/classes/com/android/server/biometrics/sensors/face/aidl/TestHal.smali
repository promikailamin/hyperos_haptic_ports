.class public Lcom/android/server/biometrics/sensors/face/aidl/TestHal;
.super Landroid/hardware/biometrics/face/IFace$Stub;
.source "TestHal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "face.aidl.TestHal"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/hardware/biometrics/face/IFace$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "cb"    # Landroid/hardware/biometrics/face/ISessionCallback;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSession, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 40
    const/4 v0, 0x2

    return v0
.end method

.method public getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;
    .registers 3

    .line 50
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "getSensorProps"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/biometrics/face/SensorProps;

    return-object v0
.end method
