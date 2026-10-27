.class public abstract Lcom/android/server/biometrics/sensors/HalClientMonitor;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "HalClientMonitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/BaseClientMonitor;"
    }
.end annotation


# instance fields
.field protected final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mOperationContext:Landroid/hardware/biometrics/common/OperationContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "cookie"    # I
    .param p8, "sensorId"    # I
    .param p9, "biometricLogger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p10, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 39
    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    iput-object v0, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Landroid/hardware/biometrics/common/OperationContext;

    .line 60
    move-object v0, p2

    iput-object v0, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 61
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 82
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    .line 86
    return-void
.end method

.method protected getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 2

    .line 93
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    new-instance v0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    return-object v0
.end method

.method public getFreshDaemon()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOperationContext()Landroid/hardware/biometrics/common/OperationContext;
    .registers 4

    .line 89
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isCryptoOperation()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/log/BiometricContext;->updateContext(Landroid/hardware/biometrics/common/OperationContext;Z)Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v0

    return-object v0
.end method

.method protected abstract startHalOperation()V
.end method

.method public abstract unableToStart()V
.end method

.method protected unsubscribeBiometricContext()V
    .registers 3

    .line 102
    .local p0, "this":Lcom/android/server/biometrics/sensors/HalClientMonitor;, "Lcom/android/server/biometrics/sensors/HalClientMonitor<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/log/BiometricContext;->unsubscribe(Landroid/hardware/biometrics/common/OperationContext;)V

    .line 103
    return-void
.end method
