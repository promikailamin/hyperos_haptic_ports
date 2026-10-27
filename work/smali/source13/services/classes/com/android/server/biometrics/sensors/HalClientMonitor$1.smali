.class Lcom/android/server/biometrics/sensors/HalClientMonitor$1;
.super Ljava/lang/Object;
.source "HalClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/HalClientMonitor;->getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 93
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor$1;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$1;"
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 96
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor$1;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$1;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 97
    return-void
.end method
