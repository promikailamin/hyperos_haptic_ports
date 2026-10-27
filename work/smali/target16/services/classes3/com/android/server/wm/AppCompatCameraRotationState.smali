.class public Lcom/android/server/wm/AppCompatCameraRotationState;
.super Ljava/lang/Object;
.source "AppCompatCameraRotationState.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayRotationIfExternal:I

.field mOrientationEventListener:Landroid/view/OrientationEventListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/AppCompatCameraRotationState;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayRotationIfExternal(Lcom/android/server/wm/AppCompatCameraRotationState;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayRotationIfExternal:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtransformSensorOrientationToDisplayRotation(Lcom/android/server/wm/AppCompatCameraRotationState;I)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraRotationState;->transformSensorOrientationToDisplayRotation(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayRotationIfExternal:I

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_a

    .line 72
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_a
    return-void
.end method

.method public getCameraDeviceRotation()I
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraRotationState;->isExternalDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayRotationIfExternal:I

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p0

    return p0
.end method

.method public final isExternalDisplay()Z
    .registers 2

    .line 168
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_CAMERA_COMPAT_EXTERNAL_DISPLAY_ROTATION_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public setupSensorOrientationListener()V
    .registers 3

    .line 80
    new-instance v0, Lcom/android/server/wm/AppCompatCameraRotationState$1;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppCompatCameraRotationState$1;-><init>(Lcom/android/server/wm/AppCompatCameraRotationState;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraRotationState;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 91
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public start()V
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraRotationState;->isExternalDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraRotationState;->setupSensorOrientationListener()V

    :cond_9
    return-void
.end method

.method public final transformSensorOrientationToDisplayRotation(I)I
    .registers 3

    rsub-int p0, p1, 0x2d0

    .line 143
    rem-int/lit16 p0, p0, 0x168

    const/16 p1, 0x2d

    const/16 v0, 0x87

    if-le p0, p1, :cond_e

    if-gt p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/16 p1, 0xe1

    if-le p0, v0, :cond_16

    if-gt p0, p1, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    if-le p0, p1, :cond_1e

    const/16 p1, 0x13b

    if-gt p0, p1, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method
