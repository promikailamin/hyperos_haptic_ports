.class public final synthetic Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iput p2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$1:I

    iput-wide p3, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$0:Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;

    iget v1, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$1:I

    iget-wide v2, p0, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal$$ExternalSyntheticLambda4;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;->$r8$lambda$al_y_afwHkyam5VA6HpKIl5oeWQ(Landroid/companion/virtual/camera/VirtualCameraConfig$VirtualCameraCallbackInternal;IJ)V

    return-void
.end method
