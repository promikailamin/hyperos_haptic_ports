.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    return-void
.end method


# virtual methods
.method public final onUserStopped()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$2;->lambda$getStopUserClient$0$com-android-server-biometrics-sensors-face-aidl-Sensor$2()V

    return-void
.end method
