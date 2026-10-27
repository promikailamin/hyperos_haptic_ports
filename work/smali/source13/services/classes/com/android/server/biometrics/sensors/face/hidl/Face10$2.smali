.class Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;->lambda$scheduleGenerateChallenge$3$com-android-server-biometrics-sensors-face-hidl-Face10(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 597
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 4
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    if-eq v0, p1, :cond_29

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleGenerateChallenge onClientStarted, mismatched client. Expecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_29
    return-void
.end method
