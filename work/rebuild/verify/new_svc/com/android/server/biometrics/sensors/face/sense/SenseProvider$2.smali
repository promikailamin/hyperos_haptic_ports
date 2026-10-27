.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;)V
    .registers 3

    .line 511
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    if-eq v0, p1, :cond_25

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleGenerateChallenge onClientStarted, mismatched client. Expecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method
