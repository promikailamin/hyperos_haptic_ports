.class public Lcom/android/server/wm/WindowStateStub;
.super Ljava/lang/Object;
.source "WindowStateStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/WindowStateStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/wm/WindowStateStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowStateStub;

    return-object v0
.end method


# virtual methods
.method public adjustInsetsForSplit(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .registers 3
    .param p1, "ws"    # Lcom/android/server/wm/WindowState;
    .param p2, "insets"    # Landroid/view/InsetsState;

    .line 34
    return-object p2
.end method

.method public getMiuiWindowStateEx(Lcom/android/server/wm/WindowManagerService;Ljava/lang/Object;)Lcom/android/server/wm/IMiuiWindowStateEx;
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "w"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMiuiLayoutInCutoutAlways(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusBarForceBlackWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNonAppSurfaceVisibilityChanged(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public updateClientHoverState(Lcom/android/server/wm/WindowState;ZZ)V
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "hoverMode"    # Z
    .param p3, "supportTouch"    # Z

    .line 39
    return-void
.end method

.method public updateHoverGuidePanel(Lcom/android/server/wm/WindowState;Z)V
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "add"    # Z

    .line 42
    return-void
.end method

.method public updateSizeCompatModeWindowInsetsPosition(Lcom/android/server/wm/WindowState;Landroid/graphics/Point;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outPos"    # Landroid/graphics/Point;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public updateSizeCompatModeWindowPosition(Landroid/graphics/Point;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "mSurfacePosition"    # Landroid/graphics/Point;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 49
    return-void
.end method
