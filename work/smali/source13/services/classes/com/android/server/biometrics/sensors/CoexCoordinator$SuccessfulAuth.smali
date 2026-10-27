.class public Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;
.super Ljava/lang/Object;
.source "CoexCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/CoexCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessfulAuth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;
    }
.end annotation


# instance fields
.field final mAuthTimestamp:J

.field final mAuthenticationClient:Lcom/android/server/biometrics/sensors/AuthenticationClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

.field final mCleanupRunnable:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;

.field final mSensorType:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/LinkedList;JILcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V
    .registers 11
    .param p1, "handler"    # Landroid/os/Handler;
    .param p3, "currentTimeMillis"    # J
    .param p5, "sensorType"    # I
    .param p7, "callback"    # Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;",
            ">;JI",
            "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
            "*>;",
            "Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;",
            ")V"
        }
    .end annotation

    .line 131
    .local p2, "successfulAuths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;>;"
    .local p6, "authenticationClient":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide p3, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthTimestamp:J

    .line 133
    iput p5, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    .line 134
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthenticationClient:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 135
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCallback:Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;

    .line 137
    new-instance v0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;

    invoke-direct {v0, p2, p0, p7}, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;-><init>(Ljava/util/LinkedList;Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mCleanupRunnable:Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth$CleanupRunnable;

    .line 139
    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mSensorType:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authenticationClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/CoexCoordinator$SuccessfulAuth;->mAuthenticationClient:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
