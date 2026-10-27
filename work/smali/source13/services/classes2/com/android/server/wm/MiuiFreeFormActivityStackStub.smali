.class Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
.super Ljava/lang/Object;
.source "MiuiFreeFormActivityStackStub.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getFreeFormScale()F
    .registers 2

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getMiniFreeFormHScale()F
    .registers 2

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getMiniFreeFormWScale()F
    .registers 2

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getPinMode()I
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method getStackPackageName()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, ""

    return-object v0
.end method

.method hadHideStackFormFullScreen()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method inPinMode()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method isChangingFromFreeformToFullscreen()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method isFlashBackMode()Z
    .registers 2

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method isInMiniFreeFormMode()Z
    .registers 2

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method isLandcapeFreeform()Z
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method isLaunchingSmallFreeForm()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method isNormalFreeForm()Z
    .registers 2

    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method isRunningPinAnim()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method isRunningUnPinAnim()Z
    .registers 2

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method onActivityStackWindowModeSet(Lcom/android/server/wm/Task;I)V
    .registers 3
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "mode"    # I

    .line 22
    return-void
.end method

.method relaunchActivityLocked(Z)V
    .registers 2
    .param p1, "preserveWindow"    # Z

    .line 27
    return-void
.end method

.method setCornerPosition(I)V
    .registers 2
    .param p1, "cornerPosition"    # I

    .line 8
    return-void
.end method

.method setFreeformTimestamp(J)V
    .registers 3
    .param p1, "lastTimestamp"    # J

    .line 42
    return-void
.end method

.method setImeModified(Z)V
    .registers 2
    .param p1, "isImeModified"    # Z

    .line 41
    return-void
.end method

.method setIsFlashBackMode(Z)V
    .registers 2
    .param p1, "flashBackMode"    # Z

    .line 32
    return-void
.end method

.method setIsLaunchFlashBackFromBackGround(Z)V
    .registers 2
    .param p1, "isLaunchFlashBackFromBackGround"    # Z

    .line 34
    return-void
.end method
