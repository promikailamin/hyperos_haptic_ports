.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
.super Ljava/lang/Object;
.source "VirtualCameraController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .registers 3

    .line 284
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 290
    const-string v0, "VirtualCameraController"

    const-string v1, "Virtual camera binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    return-void
.end method
