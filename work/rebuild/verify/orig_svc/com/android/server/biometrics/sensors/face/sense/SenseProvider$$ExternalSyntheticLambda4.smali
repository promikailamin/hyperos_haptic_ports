.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic f$1:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$3:Landroid/os/IBinder;

    iput p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$4:I

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$3:Landroid/os/IBinder;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$4:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$IKxN6Dm2pYv_DCenYh4d4zBsUsU(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method
