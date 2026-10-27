.class public final synthetic Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/FaceService$FaceProviderFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

.field public final synthetic f$1:Lcom/android/server/biometrics/log/BiometricContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/log/BiometricContext;

    return-void
.end method


# virtual methods
.method public final getFaceProvider(Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/face/FaceService;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/log/BiometricContext;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceService;->$r8$lambda$uKv-MEKRpeV_1PIrCLKfZhF5NY0(Lcom/android/server/biometrics/sensors/face/FaceService;Lcom/android/server/biometrics/log/BiometricContext;Landroid/util/Pair;Z)Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    move-result-object p0

    return-object p0
.end method
