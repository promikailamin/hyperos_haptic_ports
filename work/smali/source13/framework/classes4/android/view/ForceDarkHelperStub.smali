.class public interface abstract Landroid/view/ForceDarkHelperStub;
.super Ljava/lang/Object;
.source "ForceDarkHelperStub.java"


# direct methods
.method public static blacklist getInstance()Landroid/view/ForceDarkHelperStub;
    .registers 1

    .line 28
    const-class v0, Landroid/view/ForceDarkHelperStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ForceDarkHelperStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist addForceDarkProperty(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;)V
.end method

.method public abstract blacklist changePaintWhenDrawPatch(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract blacklist changePaintWhenDrawRect(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract blacklist changePaintWhenDrawText(Landroid/graphics/MiuiCanvas;Landroid/graphics/Paint;)Z
.end method

.method public abstract blacklist dispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)Z
.end method

.method public abstract blacklist drawBlackMask(Landroid/view/View;Landroid/graphics/Canvas;)Z
.end method

.method public blacklist enableHardwareAccelerationIfNeeded(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 40
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public abstract blacklist initialize(Landroid/content/Context;)V
.end method

.method public abstract blacklist loadForceDarkConfig(Landroid/view/ViewRootImpl;)V
.end method

.method public blacklist makeDark(I)I
    .registers 2
    .param p1, "color"    # I

    .line 78
    return p1
.end method

.method public blacklist makeDark(Landroid/graphics/Paint;)Z
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeLight(Landroid/graphics/Paint;)Z
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract blacklist onForceDarkConfigChanged(Ljava/lang/String;)V
.end method

.method public abstract blacklist registerAppDarkModeObserver(Landroid/content/Context;)V
.end method

.method public abstract blacklist shouldInterceptUiModeRelaunch(Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract blacklist updateAfterViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract blacklist updateBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)Z
.end method

.method public abstract blacklist updateBackgroundRenderNode(Landroid/view/View;Landroid/graphics/RenderNode;)Z
.end method

.method public abstract blacklist updateBeforeViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
.end method

.method public abstract blacklist updateForceDarkAllowedAttr(Landroid/view/View;Landroid/content/res/TypedArray;)Z
.end method

.method public abstract blacklist updateForceDarkBeforeDrawPath(Ljava/lang/Boolean;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
.end method

.method public abstract blacklist updateForceDarkBeginRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
.end method

.method public abstract blacklist updateForceDarkDecorView(Landroid/view/View;)V
.end method

.method public abstract blacklist updateForceDarkEndRecording(Landroid/view/View;ZLandroid/graphics/RecordingCanvas;)V
.end method

.method public blacklist updateForceDarkMode(Landroid/view/ViewRootImpl;)Z
    .registers 3
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist updateForceDarkSplashScreen(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Z
.end method
