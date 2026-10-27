.class public final synthetic Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

.field public final synthetic blacklist f$1:Landroid/companion/virtual/camera/VirtualCameraSessionConfig;

.field public final synthetic blacklist f$2:Landroid/companion/virtual/camera/ICaptureResultConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iput-object p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$1:Landroid/companion/virtual/camera/VirtualCameraSessionConfig;

    iput-object p3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$2:Landroid/companion/virtual/camera/ICaptureResultConsumer;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iget-object v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$1:Landroid/companion/virtual/camera/VirtualCameraSessionConfig;

    iget-object v2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda7;->f$2:Landroid/companion/virtual/camera/ICaptureResultConsumer;

    invoke-static {v0, v1, v2}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->$r8$lambda$Mmsciq6QqZEHjwM4ui2axCzedCk(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;Landroid/companion/virtual/camera/VirtualCameraSessionConfig;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    return-void
.end method
