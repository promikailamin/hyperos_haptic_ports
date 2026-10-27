.class public Lcom/android/server/wm/DisplayContent$ImeContainer;
.super Lcom/android/server/wm/DisplayArea$Tokens;
.source "DisplayContent.java"


# instance fields
.field public mNeedsLayer:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 5402
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ImeContainer"

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 5399
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public static skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    .line 5441
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->-$$Nest$fgetmImeLayeringTarget(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 5452
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 5455
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    const/4 p1, 0x0

    .line 5456
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    :cond_11
    :goto_11
    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .registers 6

    .line 5462
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 5465
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    const/4 p1, 0x0

    .line 5466
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    :cond_11
    :goto_11
    return-void
.end method

.method public forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 3

    .line 5447
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4

    .line 5430
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5431
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 5434
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public getOrientation(I)I
    .registers 2

    .line 5413
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x2

    return p0

    :cond_8
    return p1
.end method

.method public setNeedsLayer()V
    .registers 2

    const/4 v0, 0x1

    .line 5406
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    return-void
.end method

.method public setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .registers 7

    .line 5471
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 5472
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    if-eqz p1, :cond_55

    .line 5478
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    .line 5479
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    if-eqz p2, :cond_38

    if-eqz p1, :cond_38

    .line 5480
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_2e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x15986070f6acc9d2L

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, v2, v3, v0, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5482
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Tokens;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 5484
    :cond_38
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x4

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_55

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0xf8a48076e91355cL    # 8.265731032183512E-234

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_55
    return-void
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 5

    .line 5420
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5423
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    return-void
.end method
