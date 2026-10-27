.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;)V
    .registers 3

    .line 546
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4

    .line 550
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;

    if-eq p2, p1, :cond_25

    .line 551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "scheduleRevokeChallenge, mismatched client.Expecting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", received: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method
