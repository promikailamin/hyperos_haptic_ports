.class Lcom/android/server/wm/DisplayContent$ImeContainer;
.super Lcom/android/server/wm/DisplayArea$Tokens;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeContainer"
.end annotation


# instance fields
.field mNeedsLayer:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 5412
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ImeContainer"

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 5409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 5413
    return-void
.end method

.method private static skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2
    .param p0, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 5454
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 5468
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_5

    .line 5469
    return-void

    .line 5471
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 5473
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I
    .param p4, "forceUpdate"    # Z

    .line 5478
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    if-nez v0, :cond_5

    .line 5479
    return-void

    .line 5481
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea$Tokens;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    .line 5482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 5483
    return-void
.end method

.method forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 5463
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 5443
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5444
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5445
    const/4 v1, 0x0

    return v1

    .line 5447
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    return v1
.end method

.method getOrientation(I)I
    .registers 3
    .param p1, "candidate"    # I

    .line 5421
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5422
    const/4 v0, -0x2

    return v0

    .line 5426
    :cond_8
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 5526
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5527
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->onConfigurationChangedForSplitIme(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 5529
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 5546
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->updateImeBoundsInDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5547
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 5548
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 5536
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 5537
    invoke-static {}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->getInstance()Lcom/android/server/wm/MiuiSplitInputMethodStub;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/android/server/wm/MiuiSplitInputMethodStub;->resolveOverrideConfigurationForSplitIme(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayArea$Tokens;)V

    .line 5539
    return-void
.end method

.method public setNeedsLayer()V
    .registers 2

    .line 5416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    .line 5417
    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .registers 12
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "skipDisplayAreaAppeared"    # Z

    .line 5487
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea$Tokens;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 5488
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 5493
    if-eqz p1, :cond_52

    .line 5494
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 5495
    .local v0, "imeParentSurfaceControl":Landroid/view/SurfaceControl;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_35

    if-eqz v0, :cond_35

    .line 5496
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x4610a327

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v5, v6, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5498
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_52

    .line 5500
    :cond_35
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x4d5d0a2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    aput-object v5, v8, v2

    invoke-static {v6, v7, v4, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5506
    .end local v0    # "imeParentSurfaceControl":Landroid/view/SurfaceControl;
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_52
    :goto_52
    return-void
.end method

.method updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .registers 5
    .param p1, "aboveInsetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsSourceProvider;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 5433
    .local p2, "localInsetsSourceProvidersFromParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/InsetsSourceProvider;>;"
    .local p3, "insetsChangedWindows":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->skipImeWindowsDuringTraversal(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5434
    return-void

    .line 5436
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea$Tokens;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 5438
    return-void
.end method
