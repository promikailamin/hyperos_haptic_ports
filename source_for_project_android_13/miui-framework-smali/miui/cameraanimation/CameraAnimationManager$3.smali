.class Lmiui/cameraanimation/CameraAnimationManager$3;
.super Lmiui/process/IForegroundInfoListener$Stub;
.source "CameraAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cameraanimation/CameraAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/cameraanimation/CameraAnimationManager;


# direct methods
.method constructor blacklist <init>(Lmiui/cameraanimation/CameraAnimationManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/cameraanimation/CameraAnimationManager;

    .line 118
    iput-object p1, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    invoke-direct {p0}, Lmiui/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 4
    .param p1, "foregroundInfo"    # Lmiui/process/ForegroundInfo;

    .line 121
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmForegroundPackage(Lmiui/cameraanimation/CameraAnimationManager;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lmiui/cameraanimation/CameraAnimationManager$3;->this$0:Lmiui/cameraanimation/CameraAnimationManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmiui/cameraanimation/CameraAnimationManager;->-$$Nest$fputmLastUnavailableCameraId(Lmiui/cameraanimation/CameraAnimationManager;I)V

    .line 123
    return-void
.end method
