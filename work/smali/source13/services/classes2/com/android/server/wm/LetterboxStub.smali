.class public Lcom/android/server/wm/LetterboxStub;
.super Ljava/lang/Object;
.source "LetterboxStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/server/wm/LetterboxStub;
    .registers 1

    .line 19
    const-class v0, Lcom/android/server/wm/LetterboxStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LetterboxStub;

    return-object v0
.end method


# virtual methods
.method public applyLetterboxSurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Z
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "mSurfaceFrameRelative"    # Landroid/graphics/Rect;
    .param p3, "mLayoutFrameRelative"    # Landroid/graphics/Rect;
    .param p4, "mType"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;[Lcom/android/server/wm/Letterbox$LetterboxSurface;Lcom/android/server/wm/Letterbox$LetterboxSurface;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "mSurfaces"    # [Lcom/android/server/wm/Letterbox$LetterboxSurface;
    .param p3, "mBehind"    # Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 46
    return-void
.end method

.method public attachInput(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public createLetterboxSurfaceSurface(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/view/SurfaceControl;
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;)",
            "Landroid/view/SurfaceControl;"
        }
    .end annotation

    .line 55
    .local p3, "mSurfaceControlFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public darkModeChanged()Z
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isBitmapSurface(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mType"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .registers 4
    .param p1, "outer"    # Landroid/graphics/Rect;
    .param p2, "inner"    # Landroid/graphics/Rect;
    .param p3, "surfaceOrigin"    # Landroid/graphics/Point;

    .line 30
    return-void
.end method

.method public needShowLetterbox()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public needsApplySurfaceChanges()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onMovedToDisplay(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 50
    return-void
.end method

.method public redraw(Z)V
    .registers 2
    .param p1, "forceRedraw"    # Z

    .line 80
    return-void
.end method

.method public remove()V
    .registers 1

    .line 33
    return-void
.end method

.method public removeLetterboxSurface()V
    .registers 1

    .line 60
    return-void
.end method

.method public setLetterbox(Lcom/android/server/wm/Letterbox;)V
    .registers 2
    .param p1, "letterbox"    # Lcom/android/server/wm/Letterbox;

    .line 23
    return-void
.end method

.method public useMiuiBackgroundWindowSurface()Z
    .registers 2

    .line 36
    const/4 v0, 0x0

    return v0
.end method
