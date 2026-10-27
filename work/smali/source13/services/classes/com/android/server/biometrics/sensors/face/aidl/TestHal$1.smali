.class Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "TestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/aidl/TestHal;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

.field final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    .line 58
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/TestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .param p1, "operationId"    # J

    .line 108
    const-string v0, "face.aidl.TestHal"

    const-string v1, "authenticate"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object v0
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 5
    .param p1, "operationId"    # J
    .param p3, "context"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    const-string v0, "face.aidl.TestHal"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    .line 191
    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3

    .line 127
    const-string v0, "face.aidl.TestHal"

    const-string v1, "detectInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 3
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .param p2, "enrollmentType"    # B
    .param p3, "features"    # [B
    .param p4, "previewSurface"    # Landroid/hardware/common/NativeHandle;

    .line 89
    const-string v0, "face.aidl.TestHal"

    const-string v1, "enroll"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;)V

    return-object v0
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 7
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .param p2, "enrollmentType"    # B
    .param p3, "features"    # [B
    .param p4, "previewSurface"    # Landroid/hardware/common/NativeHandle;
    .param p5, "context"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 203
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public enumerateEnrollments()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const-string v0, "face.aidl.TestHal"

    const-string v1, "enumerateEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    .line 148
    return-void
.end method

.method public generateChallenge()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "face.aidl.TestHal"

    const-string v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    .line 73
    return-void
.end method

.method public getAuthenticatorId()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const-string v0, "face.aidl.TestHal"

    const-string v1, "getAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    .line 173
    return-void
.end method

.method public getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .registers 3
    .param p1, "enrollmentType"    # B

    .line 83
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object v0
.end method

.method public getFeatures()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const-string v0, "face.aidl.TestHal"

    const-string v1, "getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    .line 160
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 61
    const/4 v0, 0x2

    return v0
.end method

.method public invalidateAuthenticatorId()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "invalidateAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    .line 179
    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .registers 4
    .param p1, "context"    # Landroid/hardware/biometrics/common/OperationContext;

    .line 213
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "onContextChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public removeEnrollments([I)V
    .registers 4
    .param p1, "enrollmentIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "removeEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    .line 154
    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 4
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "resetLockout"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    .line 185
    return-void
.end method

.method public revokeChallenge(J)V
    .registers 5
    .param p1, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.TestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    .line 79
    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .registers 6
    .param p1, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;
    .param p2, "feature"    # B
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const-string v0, "face.aidl.TestHal"

    const-string/jumbo v1, "setFeature"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {v0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    .line 167
    return-void
.end method
