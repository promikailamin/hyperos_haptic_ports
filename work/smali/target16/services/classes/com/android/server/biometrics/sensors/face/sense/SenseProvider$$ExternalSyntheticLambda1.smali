.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic f$1:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:[B

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:J

.field public final synthetic f$7:[I

.field public final synthetic f$8:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$4:[B

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$6:J

    iput-object p9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$7:[I

    iput-object p10, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$8:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$3:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$4:[B

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$5:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$6:J

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$7:[I

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;->f$8:Landroid/view/Surface;

    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$jR2_74n81iFLmQw75-g5yJ7cBpg(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    return-void
.end method
