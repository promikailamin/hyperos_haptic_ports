.class public final synthetic Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final synthetic f$1:Landroid/hardware/face/IFaceServiceReceiver;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/IBinder;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$4:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/face/IFaceServiceReceiver;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$2:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$3:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$4:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->$r8$lambda$RePPxO8Bflurqa0wGhHwUOCFdTE(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method
