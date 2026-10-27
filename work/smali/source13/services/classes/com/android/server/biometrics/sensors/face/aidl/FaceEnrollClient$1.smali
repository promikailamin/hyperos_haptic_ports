.class Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;
.super Ljava/lang/Object;
.source "FaceEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 75
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->-$$Nest$mreleaseSurfaceHandlesIfNeeded(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    .line 84
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 78
    return-void
.end method
