.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic f$1:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V
    .registers 13

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$3:Landroid/os/IBinder;

    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$4:J

    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$5:J

    iput-boolean p9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$6:Z

    iput p10, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$7:I

    iput p11, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$8:I

    iput-boolean p12, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$9:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$3:Landroid/os/IBinder;

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$4:J

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$5:J

    iget-boolean v8, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$6:Z

    iget v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$7:I

    iget v10, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$8:I

    iget-boolean v11, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;->f$9:Z

    invoke-static/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$45juBncq7FiFWaLdxdyrwaWm4Zc(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V

    return-void
.end method
